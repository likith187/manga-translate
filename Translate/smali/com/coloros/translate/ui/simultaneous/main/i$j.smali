.class public final Lcom/coloros/translate/ui/simultaneous/main/i$j;
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
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$j;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/i$j;->b:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$j;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i$j;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/i$j;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method
