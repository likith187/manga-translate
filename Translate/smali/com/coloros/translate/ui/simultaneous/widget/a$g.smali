.class Lcom/coloros/translate/ui/simultaneous/widget/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/widget/a;->z(Landroidx/recyclerview/widget/RecyclerView$d0;IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/coloros/translate/ui/simultaneous/widget/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/widget/a;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$g;->b:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$g;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, p1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$g;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
