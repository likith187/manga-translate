.class public final Lcom/coloros/translate/ui/simultaneous/main/i$h;
.super Lcom/coloros/translate/ui/simultaneous/main/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/i;->p(Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lw8/a;


# direct methods
.method constructor <init>(Landroid/view/View;Lw8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$h;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/i$h;->b:Lw8/a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/i$h;->a:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/i$h;->b:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/i$h;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method
