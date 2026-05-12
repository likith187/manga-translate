.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->startCancelButtonExitValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v1

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v3, v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v3}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$800(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {v0, v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3102(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3100(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$600(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v1, v1, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$1400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/widget/ImageView;

    move-result-object v1

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object v0, v0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper$9;->this$1:Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$AnimatorHelper;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$2000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$OnAnimationListener;->onUpdate(ILandroid/animation/ValueAnimator;)V

    :cond_2
    return-void
.end method
