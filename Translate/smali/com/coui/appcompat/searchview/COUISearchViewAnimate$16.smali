.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->initSearchViewExitAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3000(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3700(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)I

    move-result v2

    sub-int v2, p1, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$16;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0, p1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$3202(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;I)I

    :cond_0
    return-void
.end method
