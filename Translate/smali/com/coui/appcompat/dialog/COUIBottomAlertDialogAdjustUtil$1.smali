.class Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$OnFirstLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->adjustToFree(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$anchorView:Landroid/view/View;

.field final synthetic val$extraOffsetPoint:Landroid/graphics/Point;

.field final synthetic val$touchPositionPoint:Landroid/graphics/Point;

.field final synthetic val$window:Landroid/view/Window;


# direct methods
.method constructor <init>(Landroid/view/Window;Landroid/graphics/Point;Landroid/view/View;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$window:Landroid/view/Window;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$touchPositionPoint:Landroid/graphics/Point;

    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$anchorView:Landroid/view/View;

    iput-object p4, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$extraOffsetPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstLayout()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$window:Landroid/view/Window;

    sget v1, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$touchPositionPoint:Landroid/graphics/Point;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$anchorView:Landroid/view/View;

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/FollowHandManager;->init(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$anchorView:Landroid/view/View;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3, v1}, Lcom/coui/appcompat/uiutil/FollowHandManager;->init(Landroid/view/View;II)V

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$window:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->access$000(Landroid/view/Window;Z)V

    new-instance v1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;

    invoke-direct {v1, p0, v0}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;-><init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
