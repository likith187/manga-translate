.class public Lcom/coui/appcompat/panel/COUIPanelPressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BG_ALPHA:Ljava/lang/String; = "bgAlpha"

.field private static final COUI_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final LOAD_BG_DURATION:I = 0xc8


# instance fields
.field private bgAlpha:Ljava/lang/Float;

.field private pressAnim:Landroid/animation/ValueAnimator;

.field private releaseAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->COUI_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->bgAlpha:Ljava/lang/Float;

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->lambda$startAnim$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->lambda$endAnim$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private cancelAnim(Landroid/animation/ValueAnimator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$endAnim$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "bgAlpha"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->bgAlpha:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$startAnim$0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "bgAlpha"

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->bgAlpha:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public endAnim(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->pressAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->bgAlpha:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x0

    const/4 v2, 0x1

    aput v0, v1, v2

    const-string v0, "bgAlpha"

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->releaseAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->COUI_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->releaseAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->releaseAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/g;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/g;-><init>(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->releaseAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startAnim(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->releaseAnim:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->cancelAnim(Landroid/animation/ValueAnimator;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    const-string v1, "bgAlpha"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->pressAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->COUI_EASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->pressAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->pressAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/panel/f;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/panel/f;-><init>(Lcom/coui/appcompat/panel/COUIPanelPressHelper;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPressHelper;->pressAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
