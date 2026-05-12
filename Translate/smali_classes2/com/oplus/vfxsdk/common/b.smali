.class public abstract Lcom/oplus/vfxsdk/common/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(FFF)La;
    .locals 3

    new-instance v0, La;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, La;-><init>(Ljava/lang/Float;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Lb;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-direct {v1, v2}, Lb;-><init>(F)V

    invoke-virtual {v1, p0}, Lb;->e(F)Lb;

    invoke-virtual {v1, p1}, Lb;->g(F)Lb;

    invoke-virtual {v0, p2}, La;->f(F)La;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, La;->e(F)La;

    invoke-virtual {v0, v1}, La;->d(Lb;)La;

    invoke-virtual {v0}, La;->g()V

    return-object v0
.end method
