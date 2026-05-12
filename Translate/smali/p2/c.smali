.class public final synthetic Lp2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/c;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lp2/c;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->b(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
