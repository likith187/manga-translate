.class public final Lcom/coloros/translate/widget/RippleAnimationView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/widget/RippleAnimationView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/widget/RippleAnimationView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/widget/RippleAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView$d;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "RippleAnimationView"

    const-string v1, "onAnimationCancel"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView$d;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/coloros/translate/widget/RippleAnimationView;->setMIsAnnimating(Z)V

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView$d;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {p0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMOnAnimationStatusChangeListener()Lcom/coloros/translate/widget/RippleAnimationView$c;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "RippleAnimationView"

    const-string v0, "onAnimationEnd"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    .line 2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationEnd,isReverse:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RippleAnimationView"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "RippleAnimationView"

    const-string v0, "onAnimationRepeat"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "RippleAnimationView"

    const-string v1, "onAnimationStart"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/coloros/translate/widget/RippleAnimationView$d;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/translate/widget/RippleAnimationView;->setMIsAnnimating(Z)V

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/widget/RippleAnimationView$d;->a:Lcom/coloros/translate/widget/RippleAnimationView;

    invoke-virtual {p0}, Lcom/coloros/translate/widget/RippleAnimationView;->getMOnAnimationStatusChangeListener()Lcom/coloros/translate/widget/RippleAnimationView$c;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    .line 2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAnimationStart,isReverse:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RippleAnimationView"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
