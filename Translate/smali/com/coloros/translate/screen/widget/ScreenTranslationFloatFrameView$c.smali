.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$c;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$c;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->v(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    return-void
.end method
