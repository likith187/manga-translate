.class public Lq/c$d;
.super Lq/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/c;-><init>()V

    return-void
.end method


# virtual methods
.method public j(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public k(Landroid/view/View;FDD)V
    .locals 0

    invoke-virtual {p0, p2}, Lm/e;->a(F)F

    move-result p0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    double-to-float p2, p2

    add-float/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
