.class Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;
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

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iput p2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$startLeft:I

    iput p3, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$targetLeft:I

    iput p4, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$startRight:I

    iput p5, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$targetRight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->this$0:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    iget v1, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$startLeft:I

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$targetLeft:I

    invoke-static {v1, v2, p1}, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->lerp(IIF)I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$startRight:I

    iget p0, p0, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip$3;->val$targetRight:I

    invoke-static {v2, p0, p1}, Lcom/coui/appcompat/tablayout/COUIAnimationUtils;->lerp(IIF)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method
