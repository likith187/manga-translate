.class public final enum Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

.field public static final enum INVALID:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

.field public static final enum TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

.field public static final enum TEXTURE_3D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

.field public static final enum TEXTURE_CUBE:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

.field public static final enum TEXTURE_EXTERNAL:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;


# direct methods
.method private static synthetic $values()[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;
    .locals 5

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->INVALID:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_3D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_CUBE:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    sget-object v4, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_EXTERNAL:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->INVALID:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    const-string v1, "TEXTURE_2D"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_2D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    const-string v1, "TEXTURE_3D"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_3D:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    const-string v1, "TEXTURE_CUBE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_CUBE:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    const-string v1, "TEXTURE_EXTERNAL"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->TEXTURE_EXTERNAL:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    invoke-static {}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->$values()[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;
    .locals 1

    const-class v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    invoke-virtual {v0}, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$ImageType;

    return-object v0
.end method
