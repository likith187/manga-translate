.class Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->releaseAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    const-string v1, "progressRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressRadius:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    const-string v1, "backgroundRadius"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundRadius:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    const-string v1, "progressHeight"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurProgressHeight:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    const-string v1, "backgroundHeight"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurBackgroundHeight:F

    iget-object v0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    const-string v1, "animatePadding"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, v0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;->mCurPaddingHorizontal:F

    iget-object p0, p0, Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate$5;->this$0:Lcom/coui/appcompat/seekbar/COUISeekBarDeprecate;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
