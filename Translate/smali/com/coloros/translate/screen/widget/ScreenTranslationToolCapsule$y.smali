.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->U1(Lw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

.field final synthetic b:Z

.field final synthetic c:Lw8/a;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;ZLw8/a;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iput-boolean p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->b:Z

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->c:Lw8/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->W(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->u0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;I)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->b:Z

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->Q0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->c:Lw8/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$y;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->z(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V

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
