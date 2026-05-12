.class Lcom/coloros/translate/ui/simultaneous/widget/a$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/widget/a;->U(Landroidx/recyclerview/widget/RecyclerView$d0;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$d0;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic f:I

.field final synthetic h:Landroid/view/ViewPropertyAnimator;

.field final synthetic i:Lcom/coloros/translate/ui/simultaneous/widget/a;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/widget/a;Landroidx/recyclerview/widget/RecyclerView$d0;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->i:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    iput p3, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->b:I

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->c:Landroid/view/View;

    iput p5, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->f:I

    iput-object p6, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->h:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->b:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->f:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->h:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->i:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/x;->F(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->i:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iget-object p1, p1, Lcom/coloros/translate/ui/simultaneous/widget/a;->p:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->i:Lcom/coloros/translate/ui/simultaneous/widget/a;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/widget/a;->X()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->i:Lcom/coloros/translate/ui/simultaneous/widget/a;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/widget/a$i;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/x;->G(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    return-void
.end method
