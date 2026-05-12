.class Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic val$endValue:F

.field final synthetic val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;Lcom/coui/appcompat/panel/COUIPanelContentLayout;F)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->this$0:Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->val$endValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getBtnBarLayout()Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->val$endValue:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->val$view:Lcom/coui/appcompat/panel/COUIPanelContentLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/panel/COUIPanelContentLayout;->getDivider()Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperBeforeR$3;->val$endValue:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
