.class Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;
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

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-static {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->access$100(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;->this$0:Lcom/coui/appcompat/bottomnavigation/COUINavigationView;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
