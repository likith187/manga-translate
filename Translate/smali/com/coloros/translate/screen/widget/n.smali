.class public final synthetic Lcom/coloros/translate/screen/widget/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/n;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/n;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
