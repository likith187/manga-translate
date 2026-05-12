.class public final Lcom/coloros/translate/screen/widget/e0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/widget/e0;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/screen/widget/e0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/e0$c;->a:Lcom/coloros/translate/screen/widget/e0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/e0$c;->b(Lcom/coloros/translate/screen/widget/e0;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/e0;->c(Lcom/coloros/translate/screen/widget/e0;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "ScreenTranslationSequencePlayer"

    const-string v0, "[playLoopAnimation] onAnimationCancel loadingView: "

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "ScreenTranslationSequencePlayer"

    const-string v1, "[playLoopAnimation] onAnimationEnd loadingView:"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/e0$c;->a:Lcom/coloros/translate/screen/widget/e0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coloros/translate/screen/widget/e0;->h(Lcom/coloros/translate/screen/widget/e0;Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/e0$c;->a:Lcom/coloros/translate/screen/widget/e0;

    invoke-static {p1}, Lcom/coloros/translate/screen/widget/e0;->e(Lcom/coloros/translate/screen/widget/e0;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0$c;->a:Lcom/coloros/translate/screen/widget/e0;

    new-instance v0, Lcom/coloros/translate/screen/widget/g0;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/g0;-><init>(Lcom/coloros/translate/screen/widget/e0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "ScreenTranslationSequencePlayer"

    const-string v0, "[playLoopAnimation] onAnimationRepeat loadingView: "

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p0, "animation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "ScreenTranslationSequencePlayer"

    const-string v0, "[playLoopAnimation] onAnimationStart loadingView: "

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
