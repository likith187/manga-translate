.class public Lcom/coui/appcompat/button/COUILoadingButton;
.super Lcom/coui/appcompat/button/COUIButton;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_STATE:I = 0x0

.field private static final DOT_END_ALPHA:F = 255.0f

.field private static final DOT_MID_ALPHA:F = 127.5f

.field private static final DOT_START_ALPHA:F = 51.0f

.field public static final LOADING_STATE:I = 0x1


# instance fields
.field private mButtonState:I

.field private final mDots:Ljava/lang/String;

.field private mFirstLoadingDotAlpha:I

.field private mLoadingAnim:Landroid/animation/AnimatorSet;

.field private final mLoadingCircleRadius:F

.field private final mLoadingCircleSpacing:F

.field private final mLoadingCircleTotalWidth:F

.field private mLoadingText:Ljava/lang/String;

.field private final mLoadingTextBounds:Landroid/graphics/Rect;

.field private mOnLoadingStateChangeListener:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;

.field private mOriginalText:Ljava/lang/String;

.field private mSecondLoadingDotAlpha:I

.field private mShowLoadingText:Z

.field private mThirdLoadingDotAlpha:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/button/COUILoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/button/COUILoadingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    .line 6
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingTextBounds:Landroid/graphics/Rect;

    const/16 v2, 0x33

    .line 7
    iput v2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    .line 8
    iput v2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mSecondLoadingDotAlpha:I

    .line 9
    iput v2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    .line 10
    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    .line 11
    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_isShowLoadingText:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mShowLoadingText:Z

    if-eqz p3, :cond_0

    .line 13
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_loadingText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    if-nez p3, :cond_0

    .line 14
    iput-object v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOriginalText:Ljava/lang/String;

    .line 17
    sget p2, Lcom/support/button/R$string;->loading_button_dots:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mDots:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/button/R$dimen;->coui_loading_btn_circle_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/button/R$dimen;->coui_loading_btn_circle_spacing:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleSpacing:F

    const/high16 p3, 0x40c00000    # 6.0f

    mul-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    mul-float/2addr p1, p3

    add-float/2addr p2, p1

    .line 20
    iput p2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleTotalWidth:F

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/button/COUILoadingButton;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    return p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/button/COUILoadingButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOriginalText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/button/COUILoadingButton;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    return p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/button/COUILoadingButton;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mSecondLoadingDotAlpha:I

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/button/COUILoadingButton;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/button/COUILoadingButton;)Landroid/animation/AnimatorSet;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method private drawClipDot(Landroid/graphics/Canvas;FFFFLandroid/text/TextPaint;I)V
    .locals 2

    invoke-virtual {p6, p7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mDots:Ljava/lang/String;

    invoke-virtual {p1, p0, p4, p5, p6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, p7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawLoadingCircles(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V
    .locals 7

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mSecondLoadingDotAlpha:I

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUILoadingButton;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    iget v2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    iget v2, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleTotalWidth:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    iget v6, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    add-float/2addr v5, v6

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    invoke-virtual {p1, v5, v3, v1, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    mul-float/2addr v1, v4

    add-float/2addr v5, v1

    iget v1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleSpacing:F

    add-float/2addr v5, v1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    invoke-virtual {p1, v5, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    mul-float/2addr v0, v4

    add-float/2addr v5, v0

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleSpacing:F

    add-float/2addr v5, v0

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingCircleRadius:F

    invoke-virtual {p1, v5, v3, p0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    aput p2, p0, p1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p5, p6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p0, p7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p0
.end method

.method private initAnim()V
    .locals 21

    move-object/from16 v8, p0

    new-instance v9, Lcom/coui/appcompat/button/COUILoadingButton$2;

    invoke-direct {v9, v8}, Lcom/coui/appcompat/button/COUILoadingButton$2;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    const-wide/16 v3, 0x85

    const-wide/16 v5, 0x0

    const/high16 v1, 0x424c0000    # 51.0f

    const/high16 v2, 0x42ff0000    # 127.5f

    move-object/from16 v0, p0

    move-object v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v10

    const-wide/16 v3, 0x43

    const-wide/16 v5, 0x85

    const/high16 v1, 0x42ff0000    # 127.5f

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v11

    const-wide/16 v5, 0x1d3

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x42ff0000    # 127.5f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v12

    const-wide/16 v3, 0x85

    const-wide/16 v5, 0x215

    const/high16 v1, 0x42ff0000    # 127.5f

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v13, Lcom/coui/appcompat/button/COUILoadingButton$3;

    invoke-direct {v13, v8}, Lcom/coui/appcompat/button/COUILoadingButton$3;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    const-wide/16 v5, 0x14d

    const/high16 v1, 0x424c0000    # 51.0f

    const/high16 v2, 0x42ff0000    # 127.5f

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v14

    const-wide/16 v3, 0x43

    const-wide/16 v5, 0x1d2

    const/high16 v1, 0x42ff0000    # 127.5f

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-wide/16 v5, 0x320

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x42ff0000    # 127.5f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v16

    const-wide/16 v3, 0x85

    const-wide/16 v5, 0x362

    const/high16 v1, 0x42ff0000    # 127.5f

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v13

    new-instance v7, Lcom/coui/appcompat/button/COUILoadingButton$4;

    invoke-direct {v7, v8}, Lcom/coui/appcompat/button/COUILoadingButton$4;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    const-wide/16 v5, 0x29a

    const/high16 v1, 0x424c0000    # 51.0f

    const/high16 v2, 0x42ff0000    # 127.5f

    move-object/from16 v17, v7

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v18

    const-wide/16 v3, 0x43

    const-wide/16 v5, 0x31f

    const/high16 v1, 0x42ff0000    # 127.5f

    const/high16 v2, 0x437f0000    # 255.0f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v19

    const-wide/16 v5, 0x46d

    const/high16 v1, 0x437f0000    # 255.0f

    const/high16 v2, 0x42ff0000    # 127.5f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v20

    const-wide/16 v3, 0x85

    const-wide/16 v5, 0x4af

    const/high16 v1, 0x42ff0000    # 127.5f

    const/high16 v2, 0x424c0000    # 51.0f

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->getAlphaAnimator(FFJJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    const/16 v2, 0xc

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x1

    aput-object v11, v2, v3

    const/4 v3, 0x2

    aput-object v12, v2, v3

    const/4 v3, 0x3

    aput-object v9, v2, v3

    const/4 v3, 0x4

    aput-object v14, v2, v3

    const/4 v3, 0x5

    aput-object v15, v2, v3

    const/4 v3, 0x6

    aput-object v16, v2, v3

    const/4 v3, 0x7

    aput-object v13, v2, v3

    const/16 v3, 0x8

    aput-object v18, v2, v3

    const/16 v3, 0x9

    aput-object v19, v2, v3

    const/16 v3, 0xa

    aput-object v20, v2, v3

    const/16 v3, 0xb

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/button/COUILoadingButton$5;

    invoke-direct {v1, v8}, Lcom/coui/appcompat/button/COUILoadingButton$5;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initTextChangeListener()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/button/COUILoadingButton$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/button/COUILoadingButton$1;-><init>(Lcom/coui/appcompat/button/COUILoadingButton;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private isRtlMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getButtonState()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    return p0
.end method

.method public getLoadingText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    return-object p0
.end method

.method public getOnLoadingStateChangeListener(Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;)Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOnLoadingStateChangeListener:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;

    return-object p0
.end method

.method public getShowLoadingText()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mShowLoadingText:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-super/range {p0 .. p1}, Lcom/coui/appcompat/button/COUIButton;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Paint;->getAlpha()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mShowLoadingText:Z

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v2, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mDots:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    add-float v2, v0, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-direct {v8, v9, v10}, Lcom/coui/appcompat/button/COUILoadingButton;->drawLoadingCircles(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V

    move/from16 v19, v12

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v3, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->bottom:F

    sub-float/2addr v4, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    sub-int/2addr v2, v5

    const/4 v14, 0x2

    div-int/2addr v2, v14

    int-to-float v2, v2

    sub-float v15, v4, v2

    iget v7, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mSecondLoadingDotAlpha:I

    invoke-direct/range {p0 .. p0}, Lcom/coui/appcompat/button/COUILoadingButton;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float/2addr v2, v13

    div-float/2addr v2, v3

    add-float/2addr v2, v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v13

    div-float/2addr v4, v3

    iget v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    iget v3, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v16, v4

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    sub-float/2addr v2, v13

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget v3, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    iget v4, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    move/from16 v16, v0

    move/from16 v17, v3

    move/from16 v18, v4

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/2addr v0, v14

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    invoke-virtual {v9, v0, v2, v15, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mDots:Ljava/lang/String;

    iget-object v2, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingTextBounds:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v10, v0, v6, v1, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float v3, v0, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v4, v16

    move v5, v15

    move/from16 v19, v12

    move v12, v6

    move-object v6, v10

    move/from16 v20, v7

    move/from16 v7, v17

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->drawClipDot(Landroid/graphics/Canvas;FFFFLandroid/text/TextPaint;I)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingTextBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    add-float v2, v1, v16

    iget-object v1, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mDots:Ljava/lang/String;

    invoke-virtual {v10, v1, v12, v14, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float v3, v0, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, v20

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->drawClipDot(Landroid/graphics/Canvas;FFFFLandroid/text/TextPaint;I)V

    iget-object v0, v8, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingTextBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float v2, v0, v16

    add-float v3, v16, v13

    move-object/from16 v0, p0

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Lcom/coui/appcompat/button/COUILoadingButton;->drawClipDot(Landroid/graphics/Canvas;FFFFLandroid/text/TextPaint;I)V

    goto :goto_1

    :cond_2
    move/from16 v19, v12

    invoke-direct {v8, v9, v10}, Lcom/coui/appcompat/button/COUILoadingButton;->drawLoadingCircles(Landroid/graphics/Canvas;Landroid/text/TextPaint;)V

    :goto_1
    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public resetButtonState()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOriginalText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/16 v0, 0x33

    iput v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mFirstLoadingDotAlpha:I

    iput v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mSecondLoadingDotAlpha:I

    iput v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mThirdLoadingDotAlpha:I

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOnLoadingStateChangeListener:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    invoke-interface {v0, p0}, Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;->OnLoadingStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mShowLoadingText:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingText:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setOnLoadingStateChangeListener(Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOnLoadingStateChangeListener:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;

    return-void
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOriginalText:Ljava/lang/String;

    return-void
.end method

.method public setShowLoadingText(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mShowLoadingText:Z

    return-void
.end method

.method public switchToLoadingState()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUILoadingButton;->initTextChangeListener()V

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUILoadingButton;->initAnim()V

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mLoadingAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mOnLoadingStateChangeListener:Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/coui/appcompat/button/COUILoadingButton;->mButtonState:I

    invoke-interface {v0, p0}, Lcom/coui/appcompat/button/COUILoadingButton$OnLoadingStateChangeListener;->OnLoadingStateChanged(I)V

    :cond_1
    return-void
.end method
