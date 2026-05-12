.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;->doBottomButtonTranslateAnim(Lcom/coui/appcompat/panel/COUIPanelContentLayout;FJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

.field final synthetic val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$4;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method
