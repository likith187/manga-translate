.class abstract Ld0/i$a;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ld0/i;


# direct methods
.method constructor <init>(Ld0/i;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    iput-object p1, p0, Ld0/i$a;->a:Ld0/i;

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Ld0/i$a;->a:Ld0/i;

    invoke-virtual {p0, p1}, Ld0/i;->b(I)Ld0/h;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld0/h;->L0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 2

    iget-object p0, p0, Ld0/i$a;->a:Ld0/i;

    invoke-virtual {p0, p1, p2}, Ld0/i;->c(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld0/h;

    invoke-virtual {v1}, Ld0/h;->L0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, Ld0/i$a;->a:Ld0/i;

    invoke-virtual {p0, p1}, Ld0/i;->d(I)Ld0/h;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ld0/h;->L0()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Ld0/i$a;->a:Ld0/i;

    invoke-virtual {p0, p1, p2, p3}, Ld0/i;->f(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
