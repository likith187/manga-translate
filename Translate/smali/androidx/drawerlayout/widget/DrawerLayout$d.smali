.class final Landroidx/drawerlayout/widget/DrawerLayout$d;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    invoke-static {p1}, Landroidx/drawerlayout/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ld0/h;->x0(Landroid/view/View;)V

    :cond_0
    return-void
.end method
