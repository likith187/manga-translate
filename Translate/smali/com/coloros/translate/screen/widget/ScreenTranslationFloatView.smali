.class public final Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$a;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$b;,
        Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;
    }
.end annotation


# static fields
.field public static final G:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$a;

.field private static final H:Landroid/view/animation/PathInterpolator;

.field private static final I:Landroid/view/animation/PathInterpolator;


# instance fields
.field private A:J

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

.field private a:Z

.field private final b:Ln8/j;

.field private c:[I

.field private final f:Landroid/view/WindowManager$LayoutParams;

.field private final h:F

.field private final i:F

.field private final j:F

.field private final k:Ln8/j;

.field private final l:Ln8/j;

.field private final m:Ln8/j;

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private volatile r:Lkotlinx/coroutines/f1;

.field private s:Landroid/animation/Animator;

.field private t:Z

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->G:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->H:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3e851eb8    # 0.26f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->I:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->p(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->s(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->r(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->q(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    return p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    return p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    return p0
.end method

.method private final getBackgroundPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->m:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getDeltaX()[I
    .locals 7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    filled-new-array {v1, v1}, [I

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Screen Direction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ScreenTranslationFloatView"

    invoke-virtual {v4, v5, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o:I

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v3, :cond_4

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o:I

    :cond_4
    filled-new-array {v0, v1}, [I

    move-result-object p0

    return-object p0
.end method

.method private final getLinePaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->k:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getLinePaint2()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->l:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Paint;

    return-object p0
.end method

.method private final getNavigationBarHeight()I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/screen/utils/p;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/coloros/translate/screen/utils/k;->a(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private final getShrinkX()F
    .locals 2

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->c()Lt2/b$b;

    move-result-object v0

    sget-object v1, Lt2/b$b;->LARGE:Lt2/b$b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_margin_hor_large_window:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/translate/screen/R$dimen;->translation_tool_capsule_margin_hor:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    :goto_0
    return p0
.end method

.method private final getShrinkY()F
    .locals 1

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    int-to-float p0, p0

    const v0, 0x3e23d70a    # 0.16f

    mul-float/2addr p0, v0

    return p0
.end method

.method private final getWindowManager()Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)F
    .locals 0

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    return p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->s:Landroid/animation/Animator;

    return-void
.end method

.method private final k(FF)V
    .locals 3

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->i:F

    add-float v2, v0, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    add-float v0, p1, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr p1, v0

    sub-float/2addr p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM_LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_5

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    add-float v0, p1, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr p1, v0

    sub-float/2addr p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_5
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    add-float v0, p1, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP_RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr p1, v0

    sub-float/2addr p1, v1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_7

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_0

    :cond_7
    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    :goto_0
    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_8
    const/4 p1, 0x0

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateTouchMode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenTranslationFloatView"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final l(FF)V
    .locals 3

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->p:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->i:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    add-float v2, v0, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT_TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    return-void

    :cond_0
    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM_LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    return-void

    :cond_1
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->i:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    add-float v2, v0, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP_RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    return-void

    :cond_2
    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT_BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    return-void

    :cond_3
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_4

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    cmpl-float v0, p2, p1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr p1, v0

    cmpg-float p1, p2, p1

    if-gez p1, :cond_4

    sget-object p1, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    :cond_4
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calculateTouchMode "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ScreenTranslationFloatView"

    invoke-virtual {p1, p2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final m(Lkotlinx/coroutines/f1;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->r:Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final n(FF)V
    .locals 10

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->getDeltaX()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v2

    sget-object v3, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->LEFT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-virtual {v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v3

    and-int/2addr v2, v3

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->B:F

    add-float v4, v2, p1

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->y:F

    sub-float/2addr v4, v5

    aget v6, v1, v3

    int-to-float v7, v6

    cmpg-float v7, v4, v7

    if-gez v7, :cond_1

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->D:F

    add-float/2addr v2, v4

    int-to-float v4, v6

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    int-to-float v2, v6

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->h:F

    add-float v7, v4, v6

    iget v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->D:F

    add-float v9, v2, v8

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    add-float/2addr v2, v8

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iput v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    sub-float v2, p1, v5

    sub-float/2addr v8, v2

    iput v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v2

    sget-object v4, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->TOP:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-virtual {v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->C:F

    add-float v4, v2, p2

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->z:F

    sub-float/2addr v4, v5

    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->n:I

    int-to-float v7, v6

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->E:F

    add-float/2addr v2, v4

    int-to-float v4, v6

    sub-float/2addr v2, v4

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    int-to-float v2, v6

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    goto :goto_1

    :cond_4
    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->h:F

    add-float v7, v4, v6

    iget v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->E:F

    add-float v9, v2, v8

    cmpl-float v7, v7, v9

    if-lez v7, :cond_5

    add-float/2addr v2, v8

    sub-float/2addr v2, v6

    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    iput v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    goto :goto_1

    :cond_5
    iput v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    sub-float v2, p2, v5

    sub-float/2addr v8, v2

    iput v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    :cond_6
    :goto_1
    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v2

    sget-object v4, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->RIGHT:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-virtual {v4}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v4

    and-int/2addr v2, v4

    const/4 v4, 0x1

    if-eqz v2, :cond_9

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->D:F

    add-float/2addr v2, p1

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->y:F

    sub-float/2addr v2, p1

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->B:F

    add-float v5, p1, v2

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v6, v6, v3

    aget v1, v1, v4

    sub-int v7, v6, v1

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_7

    int-to-float v2, v6

    sub-float/2addr v2, p1

    int-to-float p1, v1

    sub-float/2addr v2, p1

    goto :goto_2

    :cond_7
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->h:F

    cmpg-float v1, v2, p1

    if-gez v1, :cond_8

    move v2, p1

    :cond_8
    :goto_2
    iput v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    :cond_9
    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result p1

    sget-object v0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->BOTTOM:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->getV()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->E:F

    add-float/2addr p1, p2

    iget p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->z:F

    sub-float/2addr p1, p2

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->t()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_3

    :cond_a
    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o:I

    :goto_3
    iget p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->C:F

    add-float v0, p2, p1

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v1, v1, v4

    sub-int v2, v1, v3

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    sub-int/2addr v1, v3

    int-to-float p1, v1

    sub-float/2addr p1, p2

    goto :goto_4

    :cond_b
    iget p2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->h:F

    cmpg-float v0, p1, p2

    if-gez v0, :cond_c

    move p1, p2

    :cond_c
    :goto_4
    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    :cond_d
    return-void
.end method

.method private final o(Landroid/view/MotionEvent;)V
    .locals 13

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->s:Landroid/animation/Animator;

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/w;->b(Landroid/graphics/Rect;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->A:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v4, Lcom/coloros/translate/screen/utils/w;->INSTANCE:Lcom/coloros/translate/screen/utils/w;

    invoke-virtual {v4}, Lcom/coloros/translate/screen/utils/w;->c()Landroid/view/OplusWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/OplusWindowManager;->getSplitAreaRegion()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v0, :cond_5

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v6

    invoke-virtual {v6}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    move v9, v3

    :goto_0
    if-ge v9, v8, :cond_3

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move v7, v5

    goto :goto_1

    :cond_1
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    cmpl-float v11, v10, v7

    if-lez v11, :cond_2

    move v6, v9

    move v7, v10

    :cond_2
    add-int/2addr v9, v2

    goto :goto_0

    :cond_3
    :goto_1
    cmpg-float p1, v7, v5

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v4, p1, v3

    aget p1, p1, v2

    invoke-virtual {v1, v3, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    goto :goto_4

    :cond_6
    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const v4, 0x3e23d70a    # 0.16f

    mul-float/2addr p1, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr p1, v4

    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v6, v6, v2

    if-ne v5, v6, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->t()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "getContext(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    goto :goto_6

    :cond_8
    :goto_5
    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o:I

    int-to-float v5, v5

    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    add-float/2addr v5, v6

    goto :goto_6

    :cond_9
    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    :goto_6
    add-float v6, p1, v4

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v7

    sub-float/2addr v8, v5

    cmpl-float v6, v6, v8

    if-lez v6, :cond_a

    int-to-float v4, v7

    sub-float/2addr v4, p1

    sub-float/2addr v4, v5

    :cond_a
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->s:Landroid/animation/Animator;

    const-wide/16 v6, 0x205

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    sget-object v6, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->H:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$d;

    invoke-direct {v6, p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$d;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->getDeltaX()[I

    move-result-object v6

    iget v7, v1, Landroid/graphics/Rect;->left:I

    if-nez v7, :cond_b

    aget v8, v6, v3

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    :goto_7
    add-float/2addr v7, v8

    goto :goto_8

    :cond_b
    int-to-float v7, v7

    iget v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    goto :goto_7

    :goto_8
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v8, v8, v3

    if-ne v1, v8, :cond_c

    int-to-float v1, v1

    iget v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    sub-float/2addr v1, v8

    aget v6, v6, v2

    int-to-float v6, v6

    :goto_9
    sub-float/2addr v1, v6

    sub-float/2addr v1, v7

    goto :goto_a

    :cond_c
    int-to-float v1, v1

    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    goto :goto_9

    :goto_a
    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    new-array v8, v0, [F

    aput v6, v8, v3

    aput v7, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    new-instance v7, Lcom/coloros/translate/screen/widget/p;

    invoke-direct {v7, p0}, Lcom/coloros/translate/screen/widget/p;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget-object v7, Ln8/h0;->INSTANCE:Ln8/h0;

    iget v7, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    new-array v8, v0, [F

    aput v7, v8, v3

    aput v1, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v7, Lcom/coloros/translate/screen/widget/q;

    invoke-direct {v7, p0}, Lcom/coloros/translate/screen/widget/q;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v7, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    new-array v8, v0, [F

    aput v7, v8, v3

    aput v4, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v7, Lcom/coloros/translate/screen/widget/r;

    invoke-direct {v7, p0}, Lcom/coloros/translate/screen/widget/r;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    filled-new-array {v6, v1, v4}, [Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/o;->d([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    cmpg-float v4, p1, v4

    if-nez v4, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    new-array v0, v0, [F

    aput v6, v0, v3

    aput p1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/coloros/translate/screen/widget/s;

    invoke-direct {v0, p0}, Lcom/coloros/translate/screen/widget/s;-><init>(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_b
    if-eqz v1, :cond_e

    goto :goto_c

    :cond_e
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v5, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static final p(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
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

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    return-void
.end method

.method private static final q(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->q:I

    return-void
.end method

.method private static final r(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
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

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    const/4 p0, 0x0

    throw p0
.end method

.method private static final s(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Landroid/animation/ValueAnimator;)V
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

    iput p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    return-void
.end method

.method private final setShrink(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->t:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->i:F

    sub-float v3, v1, v2

    float-to-int v3, v3

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v4, v4, v0

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr v1, v5

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p1, v0, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-direct {p1, v0, v0, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1}, Lkotlin/collections/o;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method private final t()Z
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

.method public static synthetic v(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;JILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x3e8

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u(J)V

    return-void
.end method


# virtual methods
.method public final getCurrentDrawPosition()Landroid/graphics/RectF;
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iget v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    add-float/2addr v3, v1

    iget p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float/2addr p0, v2

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public final getGoingHideFloatView()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->a:Z

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationFloatView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->r:Lkotlinx/coroutines/f1;

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->m(Lkotlinx/coroutines/f1;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->s:Landroid/animation/Animator;

    const/4 v1, 0x1

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->a:Z

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    const/4 v3, 0x0

    if-eq v0, v1, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    goto/16 :goto_a

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    sget-object v5, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-ne v4, v5, :cond_9

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->getDeltaX()[I

    move-result-object v4

    aget v5, v4, v3

    aget v4, v4, v1

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->t()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "getContext(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/coloros/translate/screen/utils/k;->f(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    move v6, v3

    goto :goto_1

    :cond_4
    :goto_0
    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o:I

    :goto_1
    iget v7, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->B:F

    add-float/2addr v7, v0

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->y:F

    sub-float/2addr v7, v0

    int-to-float v0, v5

    cmpg-float v5, v7, v0

    if-gez v5, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    add-float v5, v7, v0

    iget-object v8, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v3, v8, v3

    sub-int v8, v3, v4

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-lez v5, :cond_6

    int-to-float v3, v3

    sub-float/2addr v3, v0

    int-to-float v0, v4

    sub-float v7, v3, v0

    :cond_6
    :goto_2
    iput v7, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->C:F

    add-float/2addr v0, p1

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->z:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->n:I

    int-to-float v3, p1

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_7

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float v3, v0, p1

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v1, v4, v1

    sub-int v4, v1, v6

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    sub-int/2addr v1, v6

    int-to-float v0, v1

    sub-float/2addr v0, p1

    goto :goto_3

    :cond_7
    int-to-float v0, p1

    :cond_8
    :goto_3
    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    goto :goto_4

    :cond_9
    invoke-direct {p0, v0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->n(FF)V

    :goto_4
    throw v2

    :cond_a
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-boolean v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->t:Z

    if-eqz v4, :cond_c

    sget-object v4, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;->MOVE:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-ne v0, v4, :cond_d

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->o(Landroid/view/MotionEvent;)V

    goto :goto_5

    :cond_c
    const-wide/16 v4, 0x0

    invoke-static {p0, v4, v5, v1, v2}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v(Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;JILjava/lang/Object;)V

    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->f:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->c:[I

    aget v5, v4, v3

    if-ne v0, v5, :cond_e

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    aget v6, v4, v1

    if-ne v0, v6, :cond_e

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_e

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v0, :cond_10

    :cond_e
    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->j:F

    float-to-int v6, v0

    sub-int/2addr v5, v6

    iput v5, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    aget v4, v4, v1

    float-to-int v0, v0

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-direct {p0}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_7

    :cond_f
    :goto_6
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :goto_7
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_8
    invoke-static {p1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_10

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViewLayout:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "ScreenTranslationFloatView"

    invoke-virtual {v0, v4, p1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    invoke-direct {p0, v3}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->setShrink(Z)V

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    goto :goto_a

    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/view/inputmethod/OplusInputMethodManager;->hideSoftInput(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->z:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->A:J

    iput-object v2, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    iget p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->y:F

    iget v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->u:F

    iget v3, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->i:F

    sub-float v4, v0, v3

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_14

    iget v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->x:F

    add-float v5, v0, v4

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_14

    iget v5, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->z:F

    iget v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->v:F

    sub-float v7, v6, v3

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_14

    iget v7, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->w:F

    add-float v8, v6, v7

    add-float/2addr v8, v3

    cmpg-float v3, v5, v8

    if-gtz v3, :cond_14

    iput v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->B:F

    iput v6, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->C:F

    iput v4, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->D:F

    iput v7, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->E:F

    iget-boolean v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->t:Z

    if-eqz v0, :cond_12

    invoke-direct {p0, p1, v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->l(FF)V

    goto :goto_9

    :cond_12
    invoke-direct {p0, p1, v5}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->k(FF)V

    :goto_9
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->F:Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$c;

    if-nez p1, :cond_13

    return v1

    :cond_13
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->r:Lkotlinx/coroutines/f1;

    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->m(Lkotlinx/coroutines/f1;)V

    throw v2

    :cond_14
    :goto_a
    return v1
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

    const-string v2, "ScreenTranslationFloatView"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->a:Z

    return-void
.end method

.method public final u(J)V
    .locals 8

    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->r:Lkotlinx/coroutines/f1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/o0;->c()Lkotlinx/coroutines/p1;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v2

    new-instance v5, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;

    invoke-direct {v5, p1, p2, p0, v1}, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView$e;-><init>(JLcom/coloros/translate/screen/widget/ScreenTranslationFloatView;Lkotlin/coroutines/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationFloatView;->r:Lkotlinx/coroutines/f1;

    return-void
.end method
