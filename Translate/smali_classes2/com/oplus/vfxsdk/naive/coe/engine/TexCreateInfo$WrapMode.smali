.class public final enum Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;
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
    name = "WrapMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

.field public static final enum BORDER:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

.field public static final enum CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

.field public static final enum MIRROR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

.field public static final enum REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;


# direct methods
.method private static synthetic $values()[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;
    .locals 4

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    sget-object v1, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    sget-object v2, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->BORDER:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    sget-object v3, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->MIRROR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    const-string v1, "REPEAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->REPEAT:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    const-string v1, "CLAMP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->CLAMP:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    const-string v1, "BORDER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->BORDER:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    const-string v1, "MIRROR"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->MIRROR:Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    invoke-static {}, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->$values()[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;
    .locals 1

    const-class v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    return-object p0
.end method

.method public static values()[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->$VALUES:[Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    invoke-virtual {v0}, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo$WrapMode;

    return-object v0
.end method
