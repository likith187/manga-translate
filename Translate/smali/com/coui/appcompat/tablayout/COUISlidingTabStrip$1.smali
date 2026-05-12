.class Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

.field final synthetic val$curStartColor:I

.field final synthetic val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

.field final synthetic val$evaluator:Landroid/animation/ArgbEvaluator;

.field final synthetic val$leftDiff:I

.field final synthetic val$nextStartColor:I

.field final synthetic val$nextView:Landroid/widget/TextView;

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I

.field final synthetic val$widthDiff:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;Landroid/widget/TextView;Landroid/animation/ArgbEvaluator;ILcom/coui/appcompat/tablayout/COUITabView;IIIIIII)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$nextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$evaluator:Landroid/animation/ArgbEvaluator;

    iput p4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$nextStartColor:I

    iput-object p5, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

    iput p6, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$curStartColor:I

    iput p7, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$startRight:I

    iput p8, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$startLeft:I

    iput p9, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$widthDiff:I

    iput p10, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$leftDiff:I

    iput p11, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$targetRight:I

    iput p12, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$targetLeft:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$nextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$evaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$nextStartColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-static {v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->access$000(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;)Lcom/coui/appcompat/tablayout/COUITabLayout;

    move-result-object v3

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTextColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$curTabView:Lcom/coui/appcompat/tablayout/COUITabView;

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabView;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$evaluator:Landroid/animation/ArgbEvaluator;

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$curStartColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-static {v3}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->access$000(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;)Lcom/coui/appcompat/tablayout/COUITabLayout;

    move-result-object v3

    iget v3, v3, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTextColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v1, v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iput p1, v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastOffset:F

    :cond_1
    iget v1, v0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->mLastOffset:F

    sub-float v1, p1, v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$startRight:I

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$startLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$widthDiff:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v2, v2

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$leftDiff:I

    int-to-float p0, p0

    mul-float/2addr p0, p1

    add-float/2addr v2, p0

    float-to-int p0, v2

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$targetRight:I

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$targetLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$widthDiff:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float p1, v2

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$1;->val$leftDiff:I

    int-to-float p0, p0

    mul-float/2addr p0, v4

    sub-float/2addr p1, p0

    float-to-int p0, p1

    :goto_0
    add-int/2addr v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method
