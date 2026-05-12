.class public Lcom/coui/appcompat/reddot/COUIHintRedDot;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final CONSTANT_VALUE_3:I = 0x3

.field public static final CONSTANT_VALUE_4:I = 0x4

.field public static final MAX_ALPHA_VALUE:I = 0xff

.field public static final MIN_ALPHA_VALUE:I = 0x0

.field public static final NO_POINT_MODE:I = 0x0

.field public static final NUM_CHANGE_ALPHA_ANIM_DURATION:J = 0x96L

.field public static final NUM_CHANGE_WIDTH_ANIM_DURATION:J = 0x205L

.field public static final NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final POINT_NAVI_WITH_NUM:I = 0x3

.field public static final POINT_NUM_MODE_STROKE:I = 0x5

.field public static final POINT_ONLY_MODE:I = 0x1

.field public static final POINT_ONLY_MODE_STROKE:I = 0x4

.field public static final POINT_WITH_NUM_MODE:I = 0x2

.field public static final RED_POINT_ANIM_DURATION:J = 0x208L

.field public static final TYPE_BIG_RECT_RADIUS:I = 0x2

.field public static final TYPE_SMALL_RECT_RADIUS:I = 0x1


# instance fields
.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

.field private mIsExecutingAlphaAnim:Z

.field private mIsExecutingWidthAnim:Z

.field private mIsLaidOut:Z

.field private mMoreText:Ljava/lang/String;

.field private mPointMode:I

.field private mPointNumber:I

.field private mPointText:Ljava/lang/String;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedDotDescription:Ljava/lang/String;

.field private mRedDotWithNumberDescriptionId:I

.field private mStrokeBackground:Landroid/graphics/drawable/Drawable;

.field private mTempPointNumber:I

.field private mTempWidth:I

.field private mTextPaintAlpha:I

.field private mWidthAnim:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    sput-object v0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/reddot/R$attr;->couiHintRedDotStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/reddot/R$style;->Widget_COUI_COUIHintRedDot:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    .line 6
    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempPointNumber:I

    const/16 v1, 0xff

    .line 9
    iput v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTextPaintAlpha:I

    .line 10
    sget-object v1, Lcom/support/reddot/R$styleable;->COUIHintRedDot:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 11
    sget v2, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHintRedPointMode:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    .line 12
    sget v2, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHintRedPointNum:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    .line 13
    sget v0, Lcom/support/reddot/R$styleable;->COUIHintRedDot_couiHintRedPointText:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    sget-object v5, Lcom/support/reddot/R$styleable;->COUIHintRedDot:[I

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;[III)V

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    .line 16
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$string;->red_dot_description:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRedDotDescription:Ljava/lang/String;

    .line 18
    sget p2, Lcom/support/reddot/R$plurals;->red_dot_with_number_description:I

    iput p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRedDotWithNumberDescriptionId:I

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/reddot/R$drawable;->red_dot_stroke_circle:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mStrokeBackground:Landroid/graphics/drawable/Drawable;

    .line 20
    iget p3, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    const/4 p4, 0x4

    if-ne p3, p4, :cond_0

    .line 21
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    :cond_0
    sget p2, Lcom/support/reddot/R$string;->red_dot_more:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mMoreText:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempWidth:I

    return p1
.end method

.method static synthetic access$102(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsExecutingWidthAnim:Z

    return p1
.end method

.method static synthetic access$200(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeAlphaAnim()V

    return-void
.end method

.method static synthetic access$302(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTextPaintAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsExecutingAlphaAnim:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/reddot/COUIHintRedDot;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    return p0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/reddot/COUIHintRedDot;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempPointNumber:I

    return p0
.end method

.method static synthetic access$602(Lcom/coui/appcompat/reddot/COUIHintRedDot;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempPointNumber:I

    return p1
.end method

.method static synthetic access$702(Lcom/coui/appcompat/reddot/COUIHintRedDot;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    return-object p1
.end method

.method private cancelAnim()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_1
    return-void
.end method

.method private executeAlphaAnim()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    const/16 v0, 0xff

    const/4 v1, 0x0

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDot$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$3;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$4;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private executeWidthAnim(II)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    invoke-virtual {v0, v1, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    invoke-virtual {v0, v1, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getViewWidth(II)I

    move-result p2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x205

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/coui/appcompat/reddot/COUIHintRedDot;->NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/reddot/COUIHintRedDot$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$1;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$2;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mWidthAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public changePointNumber(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->cancelAnim()V

    iget-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsLaidOut:Z

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempPointNumber:I

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->executeWidthAnim(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public executeScaleAnim(Z)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x208

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;->NUM_CHANGE_WIDTH_ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot$5;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot$6;-><init>(Lcom/coui/appcompat/reddot/COUIHintRedDot;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getIsLaidOut()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsLaidOut:Z

    return p0
.end method

.method public getPointMode()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    return p0
.end method

.method public getPointNumber()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    return p0
.end method

.method public getPointText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->cancelAnim()V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsLaidOut:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsExecutingAlphaAnim:Z

    const/16 v1, 0x3e8

    if-eqz v0, :cond_1

    iget v4, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    if-lt v4, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempPointNumber:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v5, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTextPaintAlpha:I

    iget v6, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempPointNumber:I

    rsub-int v7, v5, 0xff

    iget-object v8, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawPointWithFadeNumber(Landroid/graphics/Canvas;IIIILandroid/graphics/RectF;)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    if-eqz v0, :cond_3

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mMoreText:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    iget-object v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->drawRedPoint(Landroid/graphics/Canvas;ILjava/lang/Object;Landroid/graphics/RectF;)V

    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsLaidOut:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsExecutingWidthAnim:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mTempWidth:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    iget-object v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getViewWidth(ILjava/lang/String;)I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->getViewHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public saveMemento()Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;
    .locals 2

    new-instance v0, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;

    invoke-direct {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;-><init>()V

    invoke-virtual {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->setPointMode(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->setPointNumber(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->setPointText(Ljava/lang/String;)V

    return-object v0
.end method

.method public setBgColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setBgColor(I)V

    return-void
.end method

.method public setCornerRadius(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setCornerRadius(I)V

    return-void
.end method

.method public setDotDiameter(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setDotDiameter(I)V

    return-void
.end method

.method public setEllipsisDiameter(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setEllipsisDiameter(I)V

    return-void
.end method

.method public setLaidOut()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mIsLaidOut:Z

    return-void
.end method

.method public setLargeWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setLargeWidth(I)V

    return-void
.end method

.method public setMediumWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setMediumWidth(I)V

    return-void
.end method

.method public setPointMode(I)V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    if-eq v0, p1, :cond_3

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mStrokeBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointMode:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRedDotDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setPointNumber(I)V
    .locals 4

    iput p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    :goto_0
    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mRedDotWithNumberDescriptionId:I

    iget v2, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setPointText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mPointText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setSmallWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setSmallWidth(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setTextSize(I)V

    return-void
.end method

.method public setViewHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/reddot/COUIHintRedDot;->mCOUIHintRedDotHelper:Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDotHelper;->setViewHeight(I)V

    return-void
.end method
