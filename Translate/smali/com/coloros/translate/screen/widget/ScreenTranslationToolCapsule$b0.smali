.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->j2(Lw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->x0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/AnimatorSet;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Z(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Lcom/coloros/translate/screen/widget/c2;

    move-result-object p1

    sget-object v1, Lcom/coloros/translate/screen/widget/c2;->NONE:Lcom/coloros/translate/screen/widget/c2;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_7

    :cond_6
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_7

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->E(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_8
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_9
    return-void
.end method
