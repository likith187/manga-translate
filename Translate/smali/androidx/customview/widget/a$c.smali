.class Landroidx/customview/widget/a$c;
.super Ld0/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/customview/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Landroidx/customview/widget/a;


# direct methods
.method constructor <init>(Landroidx/customview/widget/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/customview/widget/a$c;->b:Landroidx/customview/widget/a;

    invoke-direct {p0}, Ld0/i;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Ld0/h;
    .locals 0

    iget-object p0, p0, Landroidx/customview/widget/a$c;->b:Landroidx/customview/widget/a;

    invoke-virtual {p0, p1}, Landroidx/customview/widget/a;->obtainAccessibilityNodeInfo(I)Ld0/h;

    move-result-object p0

    invoke-static {p0}, Ld0/h;->X(Ld0/h;)Ld0/h;

    move-result-object p0

    return-object p0
.end method

.method public d(I)Ld0/h;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/customview/widget/a$c;->b:Landroidx/customview/widget/a;

    iget p1, p1, Landroidx/customview/widget/a;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/customview/widget/a$c;->b:Landroidx/customview/widget/a;

    iget p1, p1, Landroidx/customview/widget/a;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/customview/widget/a$c;->b(I)Ld0/h;

    move-result-object p0

    return-object p0
.end method

.method public f(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/customview/widget/a$c;->b:Landroidx/customview/widget/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/customview/widget/a;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
