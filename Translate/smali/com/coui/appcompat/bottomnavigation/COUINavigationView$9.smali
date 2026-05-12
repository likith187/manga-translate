.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$600(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$600(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    move-result-object p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-interface {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;->onAnimationShowUpdate(I)V

    :cond_0
    return-void
.end method
