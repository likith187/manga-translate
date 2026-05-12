.class Landroidx/drawerlayout/widget/DrawerLayout$c;
.super Landroidx/core/view/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Landroidx/drawerlayout/widget/DrawerLayout;)V
    .locals 0

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Landroidx/core/view/a;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/drawerlayout/widget/DrawerLayout$c;->a:Landroid/graphics/Rect;

    return-void
.end method

.method private c(Ld0/h;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ld0/h;->c(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Ld0/h;Ld0/h;)V
    .locals 0

    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$c;->a:Landroid/graphics/Rect;

    invoke-virtual {p2, p0}, Ld0/h;->l(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Ld0/h;->d0(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Ld0/h;->U()Z

    move-result p0

    invoke-virtual {p1, p0}, Ld0/h;->K0(Z)V

    invoke-virtual {p2}, Ld0/h;->v()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld0/h;->v0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ld0/h;->o()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld0/h;->h0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ld0/h;->r()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ld0/h;->I()Z

    move-result p0

    invoke-virtual {p1, p0}, Ld0/h;->n0(Z)V

    invoke-virtual {p2}, Ld0/h;->L()Z

    move-result p0

    invoke-virtual {p1, p0}, Ld0/h;->q0(Z)V

    invoke-virtual {p2}, Ld0/h;->D()Z

    move-result p0

    invoke-virtual {p1, p0}, Ld0/h;->b0(Z)V

    invoke-virtual {p2}, Ld0/h;->R()Z

    move-result p0

    invoke-virtual {p1, p0}, Ld0/h;->D0(Z)V

    invoke-virtual {p2}, Ld0/h;->i()I

    move-result p0

    invoke-virtual {p1, p0}, Ld0/h;->a(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Landroidx/drawerlayout/widget/DrawerLayout$c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->n()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/drawerlayout/widget/DrawerLayout$c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->r(Landroid/view/View;)I

    move-result p2

    iget-object p0, p0, Landroidx/drawerlayout/widget/DrawerLayout$c;->b:Landroidx/drawerlayout/widget/DrawerLayout;

    invoke-virtual {p0, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->q(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.drawerlayout.widget.DrawerLayout"

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V
    .locals 3

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->Q:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ld0/h;->X(Ld0/h;)Ld0/h;

    move-result-object v0

    invoke-super {p0, p1, v0}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    invoke-virtual {p2, p1}, Ld0/h;->F0(Landroid/view/View;)V

    invoke-static {p1}, Landroidx/core/view/m0;->B(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Ld0/h;->x0(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, v0}, Landroidx/drawerlayout/widget/DrawerLayout$c;->d(Ld0/h;Ld0/h;)V

    invoke-virtual {v0}, Ld0/h;->Z()V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroidx/drawerlayout/widget/DrawerLayout$c;->c(Ld0/h;Landroid/view/ViewGroup;)V

    :goto_0
    const-string p0, "androidx.drawerlayout.widget.DrawerLayout"

    invoke-virtual {p2, p0}, Ld0/h;->h0(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Ld0/h;->p0(Z)V

    invoke-virtual {p2, p0}, Ld0/h;->q0(Z)V

    sget-object p0, Ld0/h$a;->e:Ld0/h$a;

    invoke-virtual {p2, p0}, Ld0/h;->a0(Ld0/h$a;)Z

    sget-object p0, Ld0/h$a;->f:Ld0/h$a;

    invoke-virtual {p2, p0}, Ld0/h;->a0(Ld0/h$a;)Z

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-boolean v0, Landroidx/drawerlayout/widget/DrawerLayout;->Q:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/drawerlayout/widget/DrawerLayout;->y(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method
