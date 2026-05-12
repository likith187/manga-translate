.class public final synthetic Lcom/coloros/translate/screen/widget/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/q;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/q;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->d(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
