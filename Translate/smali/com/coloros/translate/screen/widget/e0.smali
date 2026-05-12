.class public final Lcom/coloros/translate/screen/widget/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/e0$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/coloros/translate/screen/widget/e0$a;


# instance fields
.field private a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

.field private b:Landroid/widget/ImageView;

.field private final c:Landroid/content/Context;

.field private d:Lcom/airbnb/lottie/LottieAnimationView;

.field private e:Lcom/airbnb/lottie/LottieAnimationView;

.field private final f:Landroid/os/Handler;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/e0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/e0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/e0;->j:Lcom/coloros/translate/screen/widget/e0$a;

    return-void
.end method

.method public constructor <init>(Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    iput-object p2, p0, Lcom/coloros/translate/screen/widget/e0;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/coloros/translate/screen/widget/e0;->c:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/e0;->f:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/e0;->o(Lcom/coloros/translate/screen/widget/e0;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/e0;->m(Lcom/coloros/translate/screen/widget/e0;)V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/widget/e0;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/widget/e0;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/widget/e0;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/screen/widget/e0;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/e0;->i:Z

    return p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/e0;->k()V

    return-void
.end method

.method public static final synthetic h(Lcom/coloros/translate/screen/widget/e0;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/e0;->g:Z

    return-void
.end method

.method private final j()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationSequencePlayer"

    const-string v2, "playCurrentAnimation "

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$string;->screen_translation_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$dimen;->dp_48:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroidx/constraintlayout/widget/c;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/c;->u(II)V

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/c;->t(II)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    sget v1, Lcom/coloros/translate/screen/R$raw;->screen_translation_loading_pre:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/coloros/translate/screen/widget/e0$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/e0$b;-><init>(Lcom/coloros/translate/screen/widget/e0;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_7
    return-void
.end method

.method private final k()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationSequencePlayer"

    const-string v2, "playLoopAnimation "

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_3

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$string;->screen_translation_name:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/screen/R$dimen;->dp_48:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    new-instance v2, Landroidx/constraintlayout/widget/c;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/c;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/c;->u(II)V

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/c;->t(II)V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x3

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x6

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v0, v4, v3, v4}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x7

    invoke-virtual {v2, v0, v3, v1, v3}, Landroidx/constraintlayout/widget/c;->r(IIII)V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/c;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    sget v1, Lcom/coloros/translate/screen/R$raw;->screen_translation_loading_loop:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    :cond_3
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    :cond_5
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/coloros/translate/screen/widget/e0$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/e0$c;-><init>(Lcom/coloros/translate/screen/widget/e0;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    :cond_7
    return-void
.end method

.method private static final m(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/e0;->h:Z

    const-string v1, "ScreenTranslationSequencePlayer"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "[start] view isDestroyed"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/e0;->i:Z

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "action start()"

    invoke-virtual {v2, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/coloros/translate/screen/widget/e0;->g:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    const-string v3, "action start() +++++++"

    invoke-virtual {v2, v1, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/e0;->g:Z

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/e0;->j()V

    return-void
.end method

.method private static final o(Lcom/coloros/translate/screen/widget/e0;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/e0;->h:Z

    const-string v1, "ScreenTranslationSequencePlayer"

    if-eqz v0, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "[stop] view isDestroyed"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/e0;->i:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "action stop()++++++++ "

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/e0;->g:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v1, 0x8

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final i()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationSequencePlayer"

    const-string v2, "destroy view"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/e0;->h:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->b:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->e:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_2
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->d:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_4
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/coloros/translate/screen/widget/e0;->a:Lcom/coloros/translate/screen/widget/ScreenTranslationToolCapsule$RealView;

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/e0;->f:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->f:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/translate/screen/widget/c0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/c0;-><init>(Lcom/coloros/translate/screen/widget/e0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/e0;->f:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/translate/screen/widget/d0;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/d0;-><init>(Lcom/coloros/translate/screen/widget/e0;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
