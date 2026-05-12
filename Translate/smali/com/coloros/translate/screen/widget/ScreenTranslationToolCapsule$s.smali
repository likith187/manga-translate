.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->F1(ZFLw8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lw8/a;

.field final synthetic b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;


# direct methods
.method constructor <init>(Lw8/a;Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;->a:Lw8/a;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;->a:Lw8/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$s;->b:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;->w0(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule;Landroid/animation/ValueAnimator;)V

    return-void
.end method
