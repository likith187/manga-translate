.class Lcom/coloros/translate/ui/simultaneous/widget/a$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$h;->b:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$h;->a:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$h;->a:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$h;->a:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
