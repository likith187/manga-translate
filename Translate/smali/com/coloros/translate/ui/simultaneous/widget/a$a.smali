.class Lcom/coloros/translate/ui/simultaneous/widget/a$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/widget/a;->T(Lcom/coloros/translate/ui/simultaneous/widget/a$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/widget/a$k;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic f:Lcom/coloros/translate/ui/simultaneous/widget/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/widget/a;Lcom/coloros/translate/ui/simultaneous/widget/a$k;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->f:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->a:Lcom/coloros/translate/ui/simultaneous/widget/a$k;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->f:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->a:Lcom/coloros/translate/ui/simultaneous/widget/a$k;

    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/widget/a$k;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/x;->D(Landroidx/recyclerview/widget/RecyclerView$d0;Z)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->f:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iget-object p1, p1, Lcom/coloros/translate/ui/simultaneous/widget/a;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->a:Lcom/coloros/translate/ui/simultaneous/widget/a$k;

    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/widget/a$k;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->f:Lcom/coloros/translate/ui/simultaneous/widget/a;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/widget/a;->X()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->f:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$a;->a:Lcom/coloros/translate/ui/simultaneous/widget/a$k;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$k;->b:Landroidx/recyclerview/widget/RecyclerView$d0;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/x;->E(Landroidx/recyclerview/widget/RecyclerView$d0;Z)V

    return-void
.end method
