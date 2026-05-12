.class public final Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$a;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$a;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->e(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$c;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$a;->a:Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;->e(Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView;)Lcom/coloros/translate/ui/texttranslation/widget/COUIAnimateTextView$c;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
