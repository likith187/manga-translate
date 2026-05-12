.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doPaddingBottomAnim(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

.field final synthetic val$paddingLeft:I

.field final synthetic val$paddingRight:I

.field final synthetic val$paddingTop:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Landroid/view/View;III)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$paddingLeft:I

    iput p4, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$paddingTop:I

    iput p5, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$paddingRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$view:Landroid/view/View;

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$paddingLeft:I

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$paddingTop:I

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$2;->val$paddingRight:I

    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method
