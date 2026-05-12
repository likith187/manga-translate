.class Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;
.super Landroidx/recyclerview/widget/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/viewpager/COUIViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "COUILinearSmoothScrollerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/viewpager/COUIViewPager2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onTargetFound(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$a0;Landroidx/recyclerview/widget/RecyclerView$z$a;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getHorizontalSnapPreference()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f;->calculateDxToMakeVisible(Landroid/view/View;I)I

    move-result p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->getVerticalSnapPreference()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/f;->calculateDyToMakeVisible(Landroid/view/View;I)I

    move-result p1

    mul-int v0, p2, p2

    mul-int v1, p1, p1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/f;->calculateTimeForDeceleration(I)I

    move-result v0

    if-lez v0, :cond_2

    instance-of v1, p3, Landroidx/recyclerview/widget/f$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$200(Lcom/coui/appcompat/viewpager/COUIViewPager2;)I

    move-result v1

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    check-cast p3, Landroidx/recyclerview/widget/f$a;

    neg-int p2, p2

    neg-int p1, p1

    iget-object p0, p0, Landroidx/recyclerview/widget/f;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/f$a;->d(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    check-cast p3, Landroidx/recyclerview/widget/f$a;

    neg-int p2, p2

    neg-int p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$200(Lcom/coui/appcompat/viewpager/COUIViewPager2;)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$300(Lcom/coui/appcompat/viewpager/COUIViewPager2;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/f$a;->d(IIILandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_1
    neg-int p2, p2

    neg-int p1, p1

    iget-object v0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {v0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$200(Lcom/coui/appcompat/viewpager/COUIViewPager2;)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/viewpager/COUIViewPager2$COUILinearSmoothScrollerImpl;->this$0:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    invoke-static {p0}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->access$300(Lcom/coui/appcompat/viewpager/COUIViewPager2;)Landroid/view/animation/Interpolator;

    move-result-object p0

    invoke-virtual {p3, p2, p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$z$a;->d(IIILandroid/view/animation/Interpolator;)V

    :cond_2
    :goto_0
    return-void
.end method
