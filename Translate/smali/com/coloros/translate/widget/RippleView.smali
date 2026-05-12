.class public final Lcom/coloros/translate/widget/RippleView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/widget/RippleView$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/coloros/translate/widget/RippleView$a;

.field private static final i:Ljava/lang/String;

.field private static final j:F


# instance fields
.field private final a:Landroid/view/animation/PathInterpolator;

.field private final b:Landroid/view/animation/PathInterpolator;

.field private c:Landroid/animation/AnimatorSet;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/widget/RippleView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/widget/RippleView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/widget/RippleView;->h:Lcom/coloros/translate/widget/RippleView$a;

    const-string v0, "RippleView"

    sput-object v0, Lcom/coloros/translate/widget/RippleView;->i:Ljava/lang/String;

    const/high16 v0, 0x41e00000    # 28.0f

    sput v0, Lcom/coloros/translate/widget/RippleView;->j:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3eb33333    # 0.35f

    const/4 v1, 0x0

    const v2, 0x3edc28f6    # 0.43f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleView;->a:Landroid/view/animation/PathInterpolator;

    .line 6
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e051eb8    # 0.13f

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleView;->b:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3eb33333    # 0.35f

    const/4 v0, 0x0

    const v1, 0x3edc28f6    # 0.43f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleView;->a:Landroid/view/animation/PathInterpolator;

    .line 3
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e051eb8    # 0.13f

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/widget/RippleView;->b:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/widget/RippleView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/widget/RippleView;->f(Lcom/coloros/translate/widget/RippleView;)V

    return-void
.end method

.method private final b(F)F
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    return p1
.end method

.method private final c()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    const-string v2, "scaleX"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v2, "scaleY"

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v1, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofPropertyValuesHolder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleView;->a:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x74b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe51eb8    # 1.79f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3fe51eb8    # 1.79f
    .end array-data
.end method

.method private final d()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string v1, "ofPropertyValuesHolder(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x578

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleView;->b:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1d3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static final f(Lcom/coloros/translate/widget/RippleView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/widget/RippleView;->c:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private final getAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/widget/RippleView;->c()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/widget/RippleView;->d()Landroid/animation/ValueAnimator;

    move-result-object p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v1
.end method


# virtual methods
.method public final e()V
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coloros/translate/widget/RippleView;->c:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/coloros/translate/widget/RippleView;->getAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/widget/RippleView;->c:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    new-array v3, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_0
    iget-object v1, p0, Lcom/coloros/translate/widget/RippleView;->c:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/coloros/translate/widget/RippleView$b;

    invoke-direct {v2, p0}, Lcom/coloros/translate/widget/RippleView$b;-><init>(Lcom/coloros/translate/widget/RippleView;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance v1, Lcom/coloros/translate/widget/p;

    invoke-direct {v1, p0}, Lcom/coloros/translate/widget/p;-><init>(Lcom/coloros/translate/widget/RippleView;)V

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, v0, p0}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget v1, p0, Lcom/coloros/translate/widget/RippleView;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/coloros/translate/widget/RippleView;->j:F

    invoke-direct {p0, v3}, Lcom/coloros/translate/widget/RippleView;->b(F)F

    move-result p0

    invoke-virtual {p1, v1, v2, p0, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final setColor(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/widget/RippleView;->f:I

    return-void
.end method
