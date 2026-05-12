.class Lq/f$h;
.super Lq/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "h"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lq/f;-><init>()V

    return-void
.end method


# virtual methods
.method public i(Landroid/view/View;FJLm/d;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lq/f;->f(FJLandroid/view/View;Lm/d;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotationY(F)V

    iget-boolean p0, p0, Lm/o;->h:Z

    return p0
.end method
