.class final Landroidx/dynamicanimation/animation/c$b;
.super Landroidx/dynamicanimation/animation/c$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/dynamicanimation/animation/c$s;-><init>(Ljava/lang/String;Landroidx/dynamicanimation/animation/c$g;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/view/View;)F
    .locals 0

    .line 2
    invoke-static {p1}, Landroidx/core/view/m0;->I(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/c$b;->getValue(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Landroidx/core/view/m0;->G0(Landroid/view/View;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/c$b;->setValue(Landroid/view/View;F)V

    return-void
.end method
