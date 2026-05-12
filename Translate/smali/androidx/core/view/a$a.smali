.class final Landroidx/core/view/a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Landroidx/core/view/a;


# direct methods
.method constructor <init>(Landroidx/core/view/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/a;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1}, Landroidx/core/view/a;->getAccessibilityNodeProvider(Landroid/view/View;)Ld0/i;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ld0/i;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/a;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-static {p2}, Ld0/h;->M0(Landroid/view/accessibility/AccessibilityNodeInfo;)Ld0/h;

    move-result-object v0

    invoke-static {p1}, Landroidx/core/view/m0;->R(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/h;->B0(Z)V

    invoke-static {p1}, Landroidx/core/view/m0;->M(Landroid/view/View;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ld0/h;->r0(Z)V

    invoke-static {p1}, Landroidx/core/view/m0;->l(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld0/h;->w0(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Landroidx/core/view/m0;->D(Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld0/h;->H0(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/a;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ld0/h;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ld0/h;->e(Ljava/lang/CharSequence;Landroid/view/View;)V

    invoke-static {p1}, Landroidx/core/view/a;->getActionList(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ld0/h$a;

    invoke-virtual {v0, p2}, Ld0/h;->b(Ld0/h$a;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/a;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/a;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/a;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/a;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a$a;->a:Landroidx/core/view/a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/a;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
