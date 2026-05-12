.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->e3(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

.field final synthetic b:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    iput-object p2, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;->b:Landroid/widget/ImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->K1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$h;->b:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
