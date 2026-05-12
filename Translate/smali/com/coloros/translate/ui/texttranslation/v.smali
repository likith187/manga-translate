.class public final synthetic Lcom/coloros/translate/ui/texttranslation/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/v;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/v;->a:Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->Z0(Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;Landroid/animation/ValueAnimator;)V

    return-void
.end method
