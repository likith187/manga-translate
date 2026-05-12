.class public Lq/f$d;
.super Lq/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/f;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;FJLm/d;)Z
    .locals 0

    iget-boolean p0, p0, Lm/o;->h:Z

    return p0
.end method

.method public j(Landroid/view/View;Lm/d;FJDD)Z
    .locals 6

    move-object v0, p0

    move v1, p3

    move-wide v2, p4

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lq/f;->f(FJLandroid/view/View;Lm/d;)F

    move-result p2

    invoke-static {p8, p9, p6, p7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p3

    double-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    iget-boolean p0, p0, Lm/o;->h:Z

    return p0
.end method
