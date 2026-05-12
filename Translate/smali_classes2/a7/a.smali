.class public abstract La7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F = 0.008333334f

.field public static b:F = 0.1f

.field public static c:F = 160.0f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(F)F
    .locals 1

    const v0, 0x40370a3e    # 2.8600001f

    invoke-static {p0}, La7/d;->d(F)F

    move-result p0

    mul-float/2addr p0, v0

    const v0, 0x400db3d0

    add-float/2addr p0, v0

    return p0
.end method

.method public static b(F)Z
    .locals 1

    sget v0, La7/a;->b:F

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(F)F
    .locals 1

    sget v0, La7/a;->c:F

    mul-float/2addr p0, v0

    return p0
.end method

.method public static d(F)F
    .locals 1

    sget v0, La7/a;->c:F

    div-float/2addr p0, v0

    return p0
.end method

.method public static e(F)V
    .locals 1

    const/high16 v0, 0x425c0000    # 55.0f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    sput p0, La7/a;->c:F

    const p0, 0x3dcccccd    # 0.1f

    invoke-static {p0}, La7/a;->d(F)F

    move-result p0

    sput p0, La7/a;->b:F

    return-void
.end method

.method public static f(F)V
    .locals 0

    sput p0, La7/a;->a:F

    return-void
.end method
