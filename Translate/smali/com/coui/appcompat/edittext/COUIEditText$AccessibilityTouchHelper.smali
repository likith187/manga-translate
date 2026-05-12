.class public Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;
.super Landroidx/customview/widget/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibilityTouchHelper"
.end annotation


# instance fields
.field private mHostView:Landroid/view/View;

.field private mUninstallRect:Landroid/graphics/Rect;

.field private mViewRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0, p2}, Landroidx/customview/widget/a;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mHostView:Landroid/view/View;

    return-void
.end method

.method private getItemBounds(I)Landroid/graphics/Rect;
    .locals 0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->initUninstallRect()V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method private initUninstallRect()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIEditText;->getDeleteButtonLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private initViewRect()V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mViewRect:Landroid/graphics/Rect;

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->initUninstallRect()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->mUninstallRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isDeleteButtonExist()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isDeleteButtonExist()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUIEditText;->isDeleteButtonExist()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->onFastDelete()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->access$700(Lcom/coui/appcompat/edittext/COUIEditText;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILd0/h;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-static {v0}, Lcom/coui/appcompat/edittext/COUIEditText;->access$700(Lcom/coui/appcompat/edittext/COUIEditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld0/h;->l0(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ld0/h;->h0(Ljava/lang/CharSequence;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Ld0/h;->a(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;->getItemBounds(I)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Ld0/h;->c0(Landroid/graphics/Rect;)V

    return-void
.end method
