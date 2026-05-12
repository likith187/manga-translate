.class public Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;,
        Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;,
        Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;,
        Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;
    }
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private createInMainCtx:Ljava/lang/Boolean;

.field private filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

.field private flipY:Z

.field private height:I

.field private imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

.field private pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

.field private rawBuffer:Ljava/nio/ByteBuffer;

.field private texturePath:Ljava/lang/String;

.field private width:I

.field private wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    .line 3
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    .line 4
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    .line 5
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->flipY:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->texturePath:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 9
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->rawBuffer:Ljava/nio/ByteBuffer;

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->createInMainCtx:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    .line 13
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    .line 14
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    .line 15
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->flipY:Z

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->texturePath:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->rawBuffer:Ljava/nio/ByteBuffer;

    .line 19
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->createInMainCtx:Ljava/lang/Boolean;

    .line 20
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    .line 33
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    .line 34
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    .line 35
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->flipY:Z

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 38
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->rawBuffer:Ljava/nio/ByteBuffer;

    .line 39
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->createInMainCtx:Ljava/lang/Boolean;

    .line 40
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->texturePath:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    .line 23
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;->RGBA8Unorm:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    .line 24
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    .line 25
    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;->NEAREST:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->flipY:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->texturePath:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->createInMainCtx:Ljava/lang/Boolean;

    .line 30
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->rawBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFilterMode()Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    return-object p0
.end method

.method public getFlipY()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->flipY:Z

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->height:I

    return p0
.end method

.method public getImageType()Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    return-object p0
.end method

.method public getInMainCtx()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->createInMainCtx:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPixelFormat()Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    return-object p0
.end method

.method public getRawBuffer()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->rawBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public getTexturePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->texturePath:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->width:I

    return p0
.end method

.method public getWrapMode()Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setFilterMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->filterMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$FilterMode;

    return-void
.end method

.method public setFlipY(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->flipY:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->height:I

    return-void
.end method

.method public setImageType(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->imageType:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    return-void
.end method

.method public setInMainCtx(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->createInMainCtx:Ljava/lang/Boolean;

    return-void
.end method

.method public setPixelFormat(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->pixelFormat:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$PixelFormat;

    return-void
.end method

.method public setRawBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->rawBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setTexturePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->texturePath:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->width:I

    return-void
.end method

.method public setWrapMode(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;->wrapMode:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    return-void
.end method
