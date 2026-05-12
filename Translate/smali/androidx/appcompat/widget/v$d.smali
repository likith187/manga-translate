.class Landroidx/appcompat/widget/v$d;
.super Lf/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private b:Z


# direct methods
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lf/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/widget/v$d;->b:Z

    return-void
.end method


# virtual methods
.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/appcompat/widget/v$d;->b:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/v$d;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lf/c;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/v$d;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lf/c;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/v$d;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lf/c;->setHotspotBounds(IIII)V

    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/v$d;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lf/c;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/v$d;->b:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lf/c;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
