.class public final enum Lcom/oplus/aiunit/core/protocol/common/ImageFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/aiunit/core/protocol/common/ImageFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum BGR:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum BGR_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum END:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum GRAY:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum HARDWARE:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum RGB:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum RGB565:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum RGBA:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum RGBA_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum RGB_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum UNKNOWN:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_420_888:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_444:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_NV12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_NV12_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_NV21:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_NV21_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_YU12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_YU12_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_YV12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

.field public static final enum YUV_YV12_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 26

    new-instance v1, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v0, v1

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->UNKNOWN:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v2, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v1, v2

    const-string v3, "YUV_NV21"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v4}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV21:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v3, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v2, v3

    const-string v4, "YUV_NV12"

    const/4 v6, 0x2

    invoke-direct {v3, v4, v6, v5}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v4, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v3, v4

    const-string v5, "BGR"

    const/4 v7, 0x3

    invoke-direct {v4, v5, v7, v6}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->BGR:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v5, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v4, v5

    const-string v6, "RGB"

    const/4 v8, 0x4

    invoke-direct {v5, v6, v8, v7}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGB:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v6, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v5, v6

    const-string v7, "RGBA"

    const/4 v9, 0x5

    invoke-direct {v6, v7, v9, v8}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGBA:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v7, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v6, v7

    const-string v8, "YUV_YU12"

    const/4 v10, 0x6

    invoke-direct {v7, v8, v10, v9}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_YU12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v8, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v7, v8

    const-string v9, "YUV_YV12"

    const/4 v11, 0x7

    invoke-direct {v8, v9, v11, v10}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_YV12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v9, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v8, v9

    const-string v10, "RGB565"

    const/16 v12, 0x8

    invoke-direct {v9, v10, v12, v11}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGB565:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v10, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v9, v10

    const-string v11, "YUV_444"

    const/16 v12, 0x9

    const/16 v13, 0xa

    invoke-direct {v10, v11, v12, v13}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_444:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v11, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v10, v11

    const-string v12, "YUV_420_888"

    const/16 v14, 0x23

    invoke-direct {v11, v12, v13, v14}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_420_888:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v12, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v11, v12

    const/16 v13, 0xb

    const/16 v14, 0x28

    const-string v15, "GRAY"

    invoke-direct {v12, v15, v13, v14}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->GRAY:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v13, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v12, v13

    const/16 v14, 0xc

    const/16 v15, 0x32

    move-object/from16 v22, v0

    const-string v0, "HARDWARE"

    invoke-direct {v13, v0, v14, v15}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->HARDWARE:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v13, v0

    const/16 v14, 0xd

    const/16 v15, 0x64

    move-object/from16 v23, v1

    const-string v1, "IGNORED"

    invoke-direct {v0, v1, v14, v15}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->IGNORED:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v14, v0

    const/16 v1, 0xe

    const/16 v15, 0x3e8

    move-object/from16 v24, v2

    const-string v2, "YUV_NV21_10B"

    invoke-direct {v0, v2, v1, v15}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV21_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object v15, v0

    const/16 v1, 0xf

    const/16 v2, 0x3e9

    move-object/from16 v25, v3

    const-string v3, "YUV_NV12_10B"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV12_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const/16 v2, 0x3ea

    const-string v3, "BGR_10B"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->BGR_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    const/16 v2, 0x3eb

    const-string v3, "RGB_10B"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGB_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v18, v0

    const/16 v1, 0x12

    const/16 v2, 0x3ec

    const-string v3, "RGBA_10B"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->RGBA_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v19, v0

    const/16 v1, 0x13

    const/16 v2, 0x3ed

    const-string v3, "YUV_YU12_10B"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_YU12_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v20, v0

    const/16 v1, 0x14

    const/16 v2, 0x3ee

    const-string v3, "YUV_YV12_10B"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_YV12_10B:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    new-instance v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x7d0

    const-string v3, "END"

    invoke-direct {v0, v3, v1, v2}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->END:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    filled-new-array/range {v0 .. v21}, [Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object v0

    sput-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->$VALUES:[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value:I

    return-void
.end method

.method public static find(I)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->values()[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->values()[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->equals(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->values()[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    move-result-object p0

    aget-object p0, p0, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    if-nez p0, :cond_2

    sget-object p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->UNKNOWN:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    :cond_2
    return-object p0
.end method

.method public static isYUV(I)Z
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV21:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_NV12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_YU12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_YV12:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_444:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->YUV_420_888:Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value()I

    move-result v0

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/aiunit/core/protocol/common/ImageFormat;
    .locals 1

    const-class v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object p0
.end method

.method public static values()[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->$VALUES:[Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    invoke-virtual {v0}, [Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/aiunit/core/protocol/common/ImageFormat;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public value()I
    .locals 0

    iget p0, p0, Lcom/oplus/aiunit/core/protocol/common/ImageFormat;->value:I

    return p0
.end method
