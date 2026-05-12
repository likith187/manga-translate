.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->l2(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/z;

.field final synthetic b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/z;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->a:Lkotlin/jvm/internal/z;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->a:Lkotlin/jvm/internal/z;

    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_4

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->P(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->O(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$d0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->k0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void
.end method
