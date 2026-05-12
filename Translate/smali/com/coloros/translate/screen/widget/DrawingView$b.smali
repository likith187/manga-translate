.class public final Lcom/coloros/translate/screen/widget/DrawingView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/DrawingView;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/DrawingView;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/screen/widget/DrawingView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView$b;->a:Lcom/coloros/translate/screen/widget/DrawingView;

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

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView$b;->a:Lcom/coloros/translate/screen/widget/DrawingView;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/DrawingView;->e()V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView$b;->a:Lcom/coloros/translate/screen/widget/DrawingView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/DrawingView;->d(Lcom/coloros/translate/screen/widget/DrawingView;Landroid/animation/ValueAnimator;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/DrawingView$b;->a:Lcom/coloros/translate/screen/widget/DrawingView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->c(Lcom/coloros/translate/screen/widget/DrawingView;)Lcom/coloros/translate/screen/widget/c;

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
