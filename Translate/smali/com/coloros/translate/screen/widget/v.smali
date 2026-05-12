.class public final Lcom/coloros/translate/screen/widget/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/widget/v$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/screen/widget/v$a;

.field private static final c:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/coloros/translate/screen/widget/v$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/widget/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/widget/v;->b:Lcom/coloros/translate/screen/widget/v$a;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/coloros/translate/screen/widget/v;->c:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/content/Context;)V
    .locals 5

    const-string v0, "rootView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/coloros/translate/screen/R$layout;->layout_trans_float_view_tips:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coloros/translate/screen/widget/v;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    const/16 v4, 0x31

    invoke-direct {v1, v2, v2, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sget v2, Lcom/coloros/translate/screen/R$drawable;->float_view_tips_background:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setForceDarkAllowed(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p2}, Lcom/coloros/translate/screen/utils/k;->b(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e23d70a    # 0.16f

    mul-float/2addr v2, v3

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v3, Lcom/coloros/translate/screen/R$dimen;->dp_62:I

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    sub-float/2addr v2, p2

    invoke-static {v2}, Ly8/a;->b(F)I

    move-result p2

    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x16f

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/coloros/translate/screen/widget/v;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p2, Lcom/coloros/translate/screen/widget/u;

    invoke-direct {p2, p0}, Lcom/coloros/translate/screen/widget/u;-><init>(Lcom/coloros/translate/screen/widget/v;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/coloros/translate/screen/widget/v;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/v;->f(Lcom/coloros/translate/screen/widget/v;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/coloros/translate/screen/widget/v;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/translate/screen/widget/v;->e(Lcom/coloros/translate/screen/widget/v;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic c(Lcom/coloros/translate/screen/widget/v;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/v;->a:Landroid/view/View;

    return-object p0
.end method

.method private static final e(Lcom/coloros/translate/screen/widget/v;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/v;->a:Landroid/view/View;

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

.method private static final f(Lcom/coloros/translate/screen/widget/v;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/widget/v;->a:Landroid/view/View;

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


# virtual methods
.method public final d()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x16f

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coloros/translate/screen/widget/v;->c:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/t;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/t;-><init>(Lcom/coloros/translate/screen/widget/v;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coloros/translate/screen/widget/v$b;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/widget/v$b;-><init>(Lcom/coloros/translate/screen/widget/v;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
