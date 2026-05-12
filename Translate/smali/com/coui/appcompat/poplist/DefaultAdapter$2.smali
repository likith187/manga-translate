.class Lcom/coui/appcompat/poplist/DefaultAdapter$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/DefaultAdapter;->getAccessibilityDelegate(I)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$position:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;->val$position:I

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    const/16 p3, 0x10

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p2, p1, Lcom/coui/appcompat/poplist/COUITouchListView;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p2

    iget p0, p0, Lcom/coui/appcompat/poplist/DefaultAdapter$2;->val$position:I

    sub-int/2addr p0, p2

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    invoke-virtual {p1, p2, p0, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
