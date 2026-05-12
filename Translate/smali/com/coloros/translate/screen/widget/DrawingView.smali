.class public final Lcom/coloros/translate/screen/widget/DrawingView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/DrawingView$a;
    }
.end annotation


# static fields
.field public static final s:Lcom/coloros/translate/screen/widget/DrawingView$a;


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Path;

.field private final c:Landroid/graphics/RectF;

.field private final f:F

.field private final h:F

.field private i:[I

.field private j:I

.field private k:F

.field private l:I

.field private m:Z

.field private final n:Landroid/view/animation/PathInterpolator;

.field private o:Landroid/animation/ValueAnimator;

.field private final p:Landroid/graphics/Color;

.field private q:Z

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/widget/DrawingView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/DrawingView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/DrawingView;->s:Lcom/coloros/translate/screen/widget/DrawingView$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    .line 4
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/screen/R$dimen;->dp_40:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->f:F

    .line 6
    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->h:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getContext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/screen/R$dimen;->dp_15:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->k:F

    .line 9
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3f2b851f    # 0.67f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f3d70a4    # 0.74f

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->n:Landroid/view/animation/PathInterpolator;

    .line 10
    const-string p1, "#00AEFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    const-string v0, "valueOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->p:Landroid/graphics/Color;

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->q:Z

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    const v2, 0x3f19999a    # 0.6f

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    .line 13
    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    .line 14
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    .line 17
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    .line 18
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->f:F

    .line 20
    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->h:F

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_15:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->k:F

    .line 23
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f2b851f    # 0.67f

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f3d70a4    # 0.74f

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2, p2, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->n:Landroid/view/animation/PathInterpolator;

    .line 24
    const-string p1, "#00AEFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    const-string p2, "valueOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->p:Landroid/graphics/Color;

    const/4 p2, 0x1

    .line 25
    iput-boolean p2, p0, Lcom/coloros/translate/screen/widget/DrawingView;->q:Z

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v1, p2, v0, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    .line 27
    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    .line 28
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    .line 31
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    .line 32
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_40:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->f:F

    .line 34
    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->h:F

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/screen/utils/k;->d(Landroid/content/Context;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/screen/R$dimen;->dp_15:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->k:F

    .line 37
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3f2b851f    # 0.67f

    const/high16 p3, 0x3f800000    # 1.0f

    const v0, 0x3f3d70a4    # 0.74f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p2, p3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->n:Landroid/view/animation/PathInterpolator;

    .line 38
    const-string p1, "#00AEFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    const-string p2, "valueOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->p:Landroid/graphics/Color;

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p0, Lcom/coloros/translate/screen/widget/DrawingView;->q:Z

    .line 40
    invoke-virtual {p1}, Landroid/graphics/Color;->red()F

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Color;->green()F

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Color;->blue()F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    invoke-static {v0, p2, p3, p1}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    .line 41
    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    .line 42
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/DrawingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/DrawingView;->j(Lcom/coloros/translate/screen/widget/DrawingView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/DrawingView;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->i(Lcom/coloros/translate/screen/widget/DrawingView;)V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/widget/DrawingView;)Lcom/coloros/translate/screen/widget/c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/screen/widget/DrawingView;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->o:Landroid/animation/ValueAnimator;

    return-void
.end method

.method private final f()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->e(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->j:I

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->getNavigationBarHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->l:I

    return-void
.end method

.method private final g()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final getNavigationBarHeight()I
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->g()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getContext(...)"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/p;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private final h()V
    .locals 3

    new-instance v0, Lcom/coloros/translate/screen/widget/a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/a;-><init>(Lcom/coloros/translate/screen/widget/DrawingView;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->n:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coloros/translate/screen/widget/b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/b;-><init>(Lcom/coloros/translate/screen/widget/DrawingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/DrawingView$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/DrawingView$b;-><init>(Lcom/coloros/translate/screen/widget/DrawingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->o:Landroid/animation/ValueAnimator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method private static final i(Lcom/coloros/translate/screen/widget/DrawingView;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static final j(Lcom/coloros/translate/screen/widget/DrawingView;Landroid/animation/ValueAnimator;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->p:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v0

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result p1

    iput p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final k(FF)V
    .locals 4

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iput p1, p0, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iput p1, p0, Landroid/graphics/RectF;->right:F

    :cond_1
    :goto_0
    cmpg-float p1, p2, v1

    if-gez p1, :cond_2

    iput p2, p0, Landroid/graphics/RectF;->top:F

    goto :goto_1

    :cond_2
    cmpl-float p1, p2, v3

    if-lez p1, :cond_3

    iput p2, p0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->p:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v0

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3, v1, v2, v0}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->r:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v0, 0x66000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->e()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->q:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->o:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_9

    const/4 v4, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v4, :cond_1

    return v1

    :cond_1
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->m:Z

    if-nez p1, :cond_2

    return v3

    :cond_2
    iget p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->j:I

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    aget v1, v1, v3

    iget v2, p0, Lcom/coloros/translate/screen/widget/DrawingView;->l:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/screen/widget/DrawingView;->k(FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v3

    :cond_3
    iget-boolean p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->m:Z

    if-nez p1, :cond_4

    return v3

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v5, p1, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v2, v0

    sub-float v7, p1, v5

    iget v8, p0, Lcom/coloros/translate/screen/widget/DrawingView;->h:F

    cmpg-float v9, v7, v8

    const/4 v10, 0x0

    if-gez v9, :cond_6

    sub-float/2addr v8, v7

    int-to-float p1, v4

    div-float/2addr v8, p1

    sub-float/2addr v5, v8

    invoke-static {v10, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->h:F

    add-float v7, v5, p1

    iget-object v8, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    aget v8, v8, v3

    iget v9, p0, Lcom/coloros/translate/screen/widget/DrawingView;->l:I

    sub-int v11, v8, v9

    int-to-float v11, v11

    cmpl-float v11, v7, v11

    if-lez v11, :cond_5

    sub-int/2addr v8, v9

    int-to-float v5, v8

    sub-float p1, v5, p1

    move v12, v5

    move v5, p1

    move p1, v12

    goto :goto_0

    :cond_5
    move p1, v7

    :cond_6
    :goto_0
    iget v7, p0, Lcom/coloros/translate/screen/widget/DrawingView;->f:F

    cmpg-float v8, v6, v7

    if-gez v8, :cond_8

    sub-float/2addr v7, v6

    int-to-float v2, v4

    div-float/2addr v7, v2

    sub-float/2addr v0, v7

    invoke-static {v10, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/coloros/translate/screen/widget/DrawingView;->f:F

    add-float v4, v0, v2

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    aget v6, v6, v1

    int-to-float v7, v6

    cmpl-float v7, v4, v7

    if-lez v7, :cond_7

    int-to-float v0, v6

    sub-float v2, v0, v2

    move v12, v2

    move v2, v0

    move v0, v12

    goto :goto_1

    :cond_7
    move v2, v4

    :cond_8
    :goto_1
    iget-object v4, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v5, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->q:Z

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/DrawingView;->h()V

    return v3

    :cond_9
    iget p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->j:I

    int-to-float p1, p1

    iget v4, p0, Lcom/coloros/translate/screen/widget/DrawingView;->k:F

    add-float/2addr p1, v4

    cmpg-float p1, v2, p1

    if-gtz p1, :cond_a

    iput-boolean v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->m:Z

    return v1

    :cond_a
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->i:[I

    aget p1, p1, v3

    iget v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->l:I

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput-boolean v3, p0, Lcom/coloros/translate/screen/widget/DrawingView;->m:Z

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->b:Landroid/graphics/Path;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/DrawingView;->c:Landroid/graphics/RectF;

    invoke-virtual {p0, v0, p1, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return v3

    :cond_b
    :goto_2
    return v1
.end method

.method public final setCallback(Lcom/coloros/translate/screen/widget/c;)V
    .locals 0

    return-void
.end method

.method public final setDrawEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/DrawingView;->q:Z

    return-void
.end method
