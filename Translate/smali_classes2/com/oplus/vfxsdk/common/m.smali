.class public abstract Lcom/oplus/vfxsdk/common/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[F

.field private static final b:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oplus/vfxsdk/common/m;->a:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oplus/vfxsdk/common/m;->b:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final a([F)V
    .locals 5

    const-string v0, "bezier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    rem-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_1

    aget v2, p0, v1

    const/4 v3, 0x0

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    move v2, v3

    :cond_0
    aput v2, p0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final b()[F
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/m;->b:[F

    return-object v0
.end method

.method public static final c()[F
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/m;->a:[F

    return-object v0
.end method
