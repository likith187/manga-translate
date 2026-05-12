.class public final Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;

.field private static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final INSETS_EVALUATOR:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Landroid/graphics/Insets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mDuration:I

.field private final mInsetsInterpolator:Landroid/view/animation/Interpolator;

.field private final mShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->Companion:Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$Companion;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/searchview/v;

    invoke-direct {v0}, Lcom/coui/appcompat/searchview/v;-><init>()V

    sput-object v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->INSETS_EVALUATOR:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(ZILandroid/view/animation/Interpolator;)V
    .locals 1

    const-string v0, "mInsetsInterpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mShow:Z

    iput p2, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mDuration:I

    iput-object p3, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mInsetsInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private static final INSETS_EVALUATOR$lambda$2(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 5

    const-string v0, "startValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/graphics/Insets;->left:I

    int-to-float v1, v0

    iget v2, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float/2addr v0, p0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v2, v1

    iget v3, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v1, p0

    add-float/2addr v2, v1

    float-to-int v1, v2

    iget v2, p1, Landroid/graphics/Insets;->right:I

    int-to-float v3, v2

    iget v4, p2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v2, p0

    add-float/2addr v3, v2

    float-to-int v2, v3

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    int-to-float v3, p1

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private static final _get_alphaInterpolator_$lambda$1(F)F
    .locals 1

    const/4 v0, 0x2

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static synthetic a(F)F
    .locals 0

    invoke-static {p0}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->_get_alphaInterpolator_$lambda$1(F)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$getINSETS_EVALUATOR$cp()Landroid/animation/TypeEvaluator;
    .locals 1

    sget-object v0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->INSETS_EVALUATOR:Landroid/animation/TypeEvaluator;

    return-object v0
.end method

.method public static synthetic b(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->runTransition$lambda$0(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->INSETS_EVALUATOR$lambda$2(FLandroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private final getAlphaInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mShow:Z

    if-eqz p0, :cond_0

    new-instance p0, Lcom/coui/appcompat/searchview/w;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/w;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_0
    return-object p0
.end method

.method private final runTransition(Landroid/view/WindowInsetsAnimationController;Z)Landroid/animation/ValueAnimator;
    .locals 10

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v5, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mInsetsInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->getAlphaInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    if-eqz p2, :cond_0

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_0

    :goto_1
    const-string v1, "if (show) controller.hid\u2026ntroller.shownStateInsets"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getShownStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    :goto_2
    move-object v7, v1

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Landroid/view/WindowInsetsAnimationController;->getHiddenStateInsets()Landroid/graphics/Insets;

    move-result-object v1

    goto :goto_2

    :goto_3
    const-string v1, "if (show) controller.sho\u2026troller.hiddenStateInsets"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lcom/coui/appcompat/searchview/u;

    move-object v1, v9

    move-object v2, p1

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/coui/appcompat/searchview/u;-><init>(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener$runTransition$2;-><init>(Landroid/view/WindowInsetsAnimationController;Z)V

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const-string p0, "animator"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static final runTransition$lambda$0(Landroid/view/WindowInsetsAnimationController;Landroid/animation/ValueAnimator;Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;Landroid/view/animation/Interpolator;Landroid/graphics/Insets;Landroid/graphics/Insets;Landroid/view/animation/Interpolator;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "$controller"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$insetsInterpolator"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$start"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$end"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$alphaInterpolator"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/view/WindowInsetsAnimationController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-boolean p2, p2, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mShow:Z

    if-eqz p2, :cond_1

    move p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    int-to-float p2, p2

    sub-float/2addr p2, p1

    :goto_0
    invoke-interface {p3, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p3

    sget-object p7, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->INSETS_EVALUATOR:Landroid/animation/TypeEvaluator;

    invoke-interface {p7, p3, p4, p5}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Insets;

    invoke-interface {p6, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    invoke-interface {p0, p3, p2, p1}, Landroid/view/WindowInsetsAnimationController;->setInsetsAndAlpha(Landroid/graphics/Insets;FF)V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mAnimator:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    const-string p0, "controller"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 0

    const-string p2, "controller"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mShow:Z

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->runTransition(Landroid/view/WindowInsetsAnimationController;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/searchview/CustomWindowInsetsAnimationControlListener;->mAnimator:Landroid/animation/Animator;

    return-void
.end method
