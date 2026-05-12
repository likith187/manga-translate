.class Landroidx/recyclerview/widget/j$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/j;->S(Landroidx/recyclerview/widget/RecyclerView$d0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView$d0;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Landroidx/recyclerview/widget/j;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/j;Landroidx/recyclerview/widget/RecyclerView$d0;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/j$e;->f:Landroidx/recyclerview/widget/j;

    iput-object p2, p0, Landroidx/recyclerview/widget/j$e;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    iput-object p3, p0, Landroidx/recyclerview/widget/j$e;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/recyclerview/widget/j$e;->c:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/j$e;->b:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroidx/recyclerview/widget/j$e;->c:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Landroidx/recyclerview/widget/j$e;->f:Landroidx/recyclerview/widget/j;

    iget-object v0, p0, Landroidx/recyclerview/widget/j$e;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/x;->B(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    iget-object p1, p0, Landroidx/recyclerview/widget/j$e;->f:Landroidx/recyclerview/widget/j;

    iget-object p1, p1, Landroidx/recyclerview/widget/j;->o:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/recyclerview/widget/j$e;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroidx/recyclerview/widget/j$e;->f:Landroidx/recyclerview/widget/j;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/j;->X()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/recyclerview/widget/j$e;->f:Landroidx/recyclerview/widget/j;

    iget-object p0, p0, Landroidx/recyclerview/widget/j$e;->a:Landroidx/recyclerview/widget/RecyclerView$d0;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/x;->C(Landroidx/recyclerview/widget/RecyclerView$d0;)V

    return-void
.end method
