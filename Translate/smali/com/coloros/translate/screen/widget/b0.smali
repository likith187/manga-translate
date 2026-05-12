.class public final synthetic Lcom/coloros/translate/screen/widget/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/b0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView$f$a;->b(Lcom/coloros/translate/screen/widget/ScreenTranslationScanHolderView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
