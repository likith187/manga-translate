.class Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performTouchStartAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    const-string v1, "brightnessHolder"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$102(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;F)F

    const-string v0, "narrowHolderX"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "narrowHolderY"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const-string v2, "narrowHolderFont"

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3ba3d70a    # 0.005f

    mul-float/2addr v2, v3

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double/2addr v3, v5

    double-to-int v0, v3

    invoke-static {v2, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$202(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;I)I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    float-to-double v1, v1

    add-double/2addr v1, v5

    double-to-int v1, v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$302(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;I)I

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-static {v0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$402(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;F)F

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->access$500(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;->this$0:Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
