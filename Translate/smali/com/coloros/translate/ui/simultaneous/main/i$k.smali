.class public final Lcom/coloros/translate/ui/simultaneous/main/i$k;
.super Lcom/coloros/translate/ui/simultaneous/main/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/i;->q(Landroid/view/MenuItem;Landroid/view/View;ZLw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MenuItem;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/animation/ValueAnimator;

.field final synthetic f:Lw8/a;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;Landroid/view/View;Landroid/animation/ValueAnimator;Lw8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->a:Landroid/view/MenuItem;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->c:Landroid/animation/ValueAnimator;

    iput-object p4, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->f:Lw8/a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->a:Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->f:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/i$k;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/a;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->a:Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i$k;->b:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
