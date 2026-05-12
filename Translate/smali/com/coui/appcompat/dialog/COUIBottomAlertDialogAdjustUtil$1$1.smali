.class Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->onFirstLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

.field final synthetic val$parentPanel:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->this$0:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->val$parentPanel:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->this$0:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    iget-object p2, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$window:Landroid/view/Window;

    iget-object p3, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$anchorView:Landroid/view/View;

    iget-object p4, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$touchPositionPoint:Landroid/graphics/Point;

    iget-object p1, p1, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$extraOffsetPoint:Landroid/graphics/Point;

    invoke-static {p2, p3, p4, p1}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->access$100(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->val$parentPanel:Landroid/view/View;

    new-instance p2, Lcom/coui/appcompat/dialog/a;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/dialog/a;-><init>(Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1$1;->this$0:Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil$1;->val$window:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
