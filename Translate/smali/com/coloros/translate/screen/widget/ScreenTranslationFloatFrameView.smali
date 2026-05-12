.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/widget/PaintCustomView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$b;
    }
.end annotation


# static fields
.field public static final t:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$b;

.field private static final u:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ln8/j;

.field private c:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

.field private f:Lcom/coloros/translate/screen/widget/COETextureView;

.field private h:Lcom/coloros/translate/screen/widget/PaintCustomView;

.field private i:[I

.field private j:Z

.field private volatile k:Lkotlinx/coroutines/f1;

.field private l:Landroid/graphics/RectF;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private final p:Ln8/j;

.field private final q:Lkotlinx/coroutines/sync/a;

.field private r:Lcom/airbnb/lottie/LottieAnimationView;

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->t:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$b;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->u:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$v;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$v;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->b:Ln8/j;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$d;->INSTANCE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->p:Ln8/j;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lkotlinx/coroutines/sync/c;->b(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->q:Lkotlinx/coroutines/sync/a;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "pref_screen_translation_free_tip"

    invoke-static {p1, v3, v0}, Lcom/coloros/translate/screen/utils/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->s:Z

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    aget v3, v0, v1

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    aget v0, v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v0, 0x7f6

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const v0, 0xc000320

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    aget v4, v3, v1

    aget v2, v3, v2

    invoke-direct {v0, v1, v1, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o:Z

    return-void
.end method

.method public static final synthetic B(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlinx/coroutines/f1;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    return-void
.end method

.method public static synthetic D(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->C(Z)V

    return-void
.end method

.method private final E()V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->s:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->s:Z

    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lcom/coloros/translate/screen/R$raw;->screen_free_guide:I

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$c;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$c;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->g(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->v()V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->r:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "pref_screen_translation_free_tip"

    invoke-static {p0, v1, v0}, Lcom/coloros/translate/screen/utils/e;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final H(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private final I(Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;

    iget v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;

    invoke-direct {v0, p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    :goto_0
    iget-object p1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->L$2:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/vfxsdk/naive/a;

    iget-object v1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/oplus/vfxsdk/naive/a;

    iget-object v0, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;

    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Ln8/s;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-nez v2, :cond_3

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/naive/a;->F()V

    :cond_4
    const/16 v2, 0x104

    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    new-instance v2, Lcom/coloros/translate/screen/widget/COETextureView;

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/coloros/translate/screen/widget/COETextureView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    new-instance v2, Lcom/coloros/translate/screen/widget/PaintCustomView;

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/coloros/translate/screen/widget/PaintCustomView;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->E()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    :goto_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    :goto_2
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/b;->a(Z)Ljava/lang/Boolean;

    :cond_7
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v2

    new-instance v4, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$g;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$g;-><init>(Lcom/oplus/vfxsdk/naive/a;Lkotlin/coroutines/d;)V

    iput-object p0, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$f;->label:I

    invoke-static {v2, v4, v0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/g;Lw8/p;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    move-object v0, p0

    move-object p0, p1

    :goto_3
    const-string p1, "SelectStart"

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_9

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$h;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$h;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimStartListener(Lw8/a;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;

    invoke-direct {v1, v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$i;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/oplus/vfxsdk/naive/a;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimEndListener(Lw8/a;)V

    :cond_9
    const-string p1, "SelectLoop"

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_a

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$j;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$j;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimStartListener(Lw8/a;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$k;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$k;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimEndListener(Lw8/a;)V

    :cond_a
    const-string p1, "SelectEnd"

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$l;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$l;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimStartListener(Lw8/a;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$m;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$m;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimEndListener(Lw8/a;)V

    :cond_b
    const-string p1, "FrameStart"

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_c

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$n;

    invoke-direct {v1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$n;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimStartListener(Lw8/a;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$o;

    invoke-direct {v1, v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$o;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/oplus/vfxsdk/naive/a;)V

    invoke-virtual {p1, v1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimEndListener(Lw8/a;)V

    :cond_c
    const-string p1, "FrameLoop"

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p0

    if-eqz p0, :cond_d

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$p;

    invoke-direct {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$p;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimStartListener(Lw8/a;)V

    new-instance p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$q;

    invoke-direct {p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$q;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/Animator;->setAnimEndListener(Lw8/a;)V

    :cond_d
    move-object p0, v0

    :cond_e
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    if-eqz p1, :cond_f

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$r;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$r;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/BaseTextureView;->setEngineListener(Lh8/a;)V

    :cond_f
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    if-eqz p1, :cond_10

    invoke-virtual {p1, p0}, Lcom/coloros/translate/screen/widget/PaintCustomView;->setCallback(Lcom/coloros/translate/screen/widget/PaintCustomView$a;)V

    :cond_10
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public static synthetic K(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x3e8

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->J(J)V

    return-void
.end method

.method private final M()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->r:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->r:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->w()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->j()V

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeGuideView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenTranslationFloatFrameView"

    invoke-virtual {v2, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Ln8/r;->box-impl(Ljava/lang/Object;)Ln8/r;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->r:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method private final getDefaultScope()Lkotlinx/coroutines/c0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->p:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/c0;

    return-object p0
.end method

.method private final getWindowManager()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static synthetic h(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->H(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic i()Landroid/view/animation/PathInterpolator;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->u:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/COETextureView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    return-object p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lkotlinx/coroutines/c0;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->getDefaultScope()Lkotlinx/coroutines/c0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic m(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lkotlinx/coroutines/sync/a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->q:Lkotlinx/coroutines/sync/a;

    return-object p0
.end method

.method public static final synthetic n(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

    return-object p0
.end method

.method public static final synthetic o(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lcom/coloros/translate/screen/widget/PaintCustomView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    return-object p0
.end method

.method public static final synthetic p(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Lkotlinx/coroutines/f1;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    return-object p0
.end method

.method public static final synthetic q(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->l:Landroid/graphics/RectF;

    return-object p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)[I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    return-object p0
.end method

.method public static final synthetic s(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Landroid/view/WindowManager;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic t(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->I(Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->n:Z

    return p0
.end method

.method public static final synthetic v(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->M()V

    return-void
.end method

.method public static final synthetic w(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/coloros/translate/screen/widget/COETextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    return-void
.end method

.method public static final synthetic x(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic y(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->n:Z

    return-void
.end method

.method public static final synthetic z(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lcom/coloros/translate/screen/widget/PaintCustomView;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->h:Lcom/coloros/translate/screen/widget/PaintCustomView;

    return-void
.end method


# virtual methods
.method public final C(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;->q()V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->G()V

    :cond_2
    return-void
.end method

.method public final F(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-direct {p1, v1, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->i:[I

    aget v1, v0, v1

    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    aget v0, v0, v3

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWhenConfigurationChanged updateViewLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTranslationFloatFrameView"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final G()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->setGoingHideFloatView(Z)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->G(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    const-string v2, "SelectStart"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    const-string v2, "SelectLoop"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    const-string v2, "SelectEnd"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    const-string v2, "FrameStart"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    const-string v2, "FrameLoop"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    const-string v1, "FrameEnd"

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    const-string v1, "SelectStop"

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->M()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->u:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/n;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/n;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$e;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final J(J)V
    .locals 8

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j:Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchDelayedScreenshotJob:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->l:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v2

    new-instance v5, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;

    invoke-direct {v5, p1, p2, p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$s;-><init>(JLcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    :cond_2
    :goto_0
    return-void
.end method

.method public final L()V
    .locals 9

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationFloatFrameView"

    const-string v2, "onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->getDefaultScope()Lkotlinx/coroutines/c0;

    move-result-object v3

    new-instance v6, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t;

    const/4 v0, 0x0

    invoke-direct {v6, p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$t;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method public final N()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->o:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->getDefaultScope()Lkotlinx/coroutines/c0;

    move-result-object v1

    new-instance v4, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$u;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;Lkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method public a()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;->d()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationFloatFrameView"

    const-string v2, "onDrawCancel"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->l:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oplus/vfxsdk/naive/a;->G(Ljava/lang/String;)V

    :cond_0
    const-string p0, "SelectLoop"

    invoke-virtual {v0, p0}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/graphics/RectF;)V
    .locals 5

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Float;

    move-result-object v3

    const-string v4, "uFrameCenter"

    invoke-virtual {v1, v2, v4, v3}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Float;

    move-result-object p1

    const-string v0, "uFrameSize"

    invoke-virtual {p0, v2, v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public d(Landroid/graphics/RectF;)V
    .locals 6

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawFinish():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Float;

    move-result-object v4

    const-string v5, "uFrameCenter"

    invoke-virtual {v2, v3, v5, v4}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v2, v4}, [Ljava/lang/Float;

    move-result-object v2

    const-string v4, "uFrameSize"

    invoke-virtual {v1, v3, v4, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const-string v1, "FrameStart"

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    :cond_3
    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->l:Landroid/graphics/RectF;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;JILjava/lang/Object;)V

    return-void
.end method

.method public e(FF)V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDrawStart():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->M()V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->n:Z

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->f:Lcom/coloros/translate/screen/widget/COETextureView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/COETextureView;->getEngine()Lcom/oplus/vfxsdk/naive/a;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    const-string v2, "uCircle1Pos"

    invoke-virtual {v1, p2, v2, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->setParameter(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->m:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Lcom/oplus/vfxsdk/naive/a;->G(Ljava/lang/String;)V

    :cond_2
    const-string p0, "SelectEnd"

    invoke-virtual {v0, p0}, Lcom/oplus/vfxsdk/naive/a;->y(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public f(FF)V
    .locals 1

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->k:Lkotlinx/coroutines/f1;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;->q()V

    :cond_1
    return-void
.end method

.method public g(Landroid/graphics/RectF;)V
    .locals 4

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragFinish:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->l:Landroid/graphics/RectF;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, p1, v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->K(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;JILjava/lang/Object;)V

    return-void
.end method

.method public final getGoingHideFloatView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j:Z

    return p0
.end method

.method public final setCallback(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;)V
    .locals 1

    const-string v0, "onCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->c:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView$a;

    return-void
.end method

.method public final setGoingHideFloatView(Z)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goingHideFloatView "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatFrameView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatFrameView;->j:Z

    return-void
.end method
