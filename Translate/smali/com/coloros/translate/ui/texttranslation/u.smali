.class public final synthetic Lcom/coloros/translate/ui/texttranslation/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/u;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/u;->a:Landroid/widget/ImageView;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/TextTranslationActivity;->P0(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
