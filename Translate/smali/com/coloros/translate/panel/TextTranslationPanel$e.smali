.class public final Lcom/coloros/translate/panel/TextTranslationPanel$e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/panel/TextTranslationPanel;->y0(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/panel/TextTranslationPanel;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/coloros/translate/panel/TextTranslationPanel;I)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iput p2, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->E(Lcom/coloros/translate/panel/TextTranslationPanel;)Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialog;->setDraggable(Z)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p1}, Lcom/coloros/translate/panel/TextTranslationPanel;->C(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->b:I

    iget-object v1, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->C(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    invoke-static {v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->C(Lcom/coloros/translate/panel/TextTranslationPanel;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/coloros/translate/panel/TextTranslationPanel;->I(Lcom/coloros/translate/panel/TextTranslationPanel;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/coloros/translate/panel/TextTranslationPanel$e;->a:Lcom/coloros/translate/panel/TextTranslationPanel;

    invoke-static {p0}, Lcom/coloros/translate/panel/TextTranslationPanel;->N(Lcom/coloros/translate/panel/TextTranslationPanel;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
