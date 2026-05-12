.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;
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

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->a:Lkotlin/jvm/internal/z;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->a:Lkotlin/jvm/internal/z;

    iget-boolean p1, p1, Lkotlin/jvm/internal/z;->element:Z

    const/high16 v0, 0x43340000    # 180.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->o0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$e0;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->D(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/ImageView;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
