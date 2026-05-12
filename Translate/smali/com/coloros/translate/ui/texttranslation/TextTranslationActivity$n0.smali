.class public final Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n0;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->b4(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n0;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n0;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity$n0;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->L1(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)Landroid/animation/ValueAnimator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    :cond_1
    return-void
.end method
