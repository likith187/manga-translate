.class Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;
    }
.end annotation


# static fields
.field private static final DELAY_MASK_ANIMATOR:I = 0x50

.field private static final DURATION_HINT_ANIMATOR:I = 0xd9

.field private static final DURATION_MASK_ANIMATOR:I = 0x85

.field private static final MAX_COLOR_VALUE:I = 0xff

.field private static final SELECTION_MASK_ALPHA_MAX:F = 0.3f

.field private static final tmpRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimating:Z

.field private mBoxBackground:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

.field private final mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private final mEditText:Landroid/widget/EditText;

.field private mErrorColor:I

.field private mErrorPaint:Landroid/graphics/Paint;

.field private mErrorState:Z

.field private mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mHintColorChangeProgress:F

.field private mIsFocusedAtAnimateBeginning:Z

.field private mOnErrorStateChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalHighlightColor:I

.field private mOriginalTextColors:Landroid/content/res/ColorStateList;

.field private mSelectionMaskAlpha:F

.field private mSelectionMaskPaint:Landroid/graphics/Paint;

.field private mSingleCOUIEditTextHeight:F

.field private mStrokeWidth:I

.field private mTextShakeOffset:F

.field private mTextWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;-><init>(Landroid/widget/EditText;I)V

    return-void
.end method

.method constructor <init>(Landroid/widget/EditText;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    .line 4
    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    .line 5
    invoke-virtual {v0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setHintLines(I)V

    .line 6
    new-instance p0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 7
    new-instance p0, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {p0}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    const p0, 0x800033

    .line 8
    invoke-virtual {v0, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    return p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->performOnErrorStateChangeAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorState(ZZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextWidth:F

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    return p1
.end method

.method static synthetic access$600(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mIsFocusedAtAnimateBeginning:Z

    return p0
.end method

.method static synthetic access$702(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextShakeOffset:F

    return p1
.end method

.method static synthetic access$802(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    return p1
.end method

.method static synthetic access$900(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_2
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_4
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    const v1, 0x800007

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const p0, 0x800003

    if-eq v0, p0, :cond_1

    const p0, 0x800005

    if-eq v0, p0, :cond_0

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result p0

    if-eqz p0, :cond_5

    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_5
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_6
    sget-object p0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFullText()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isPassword()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getMaskChars()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getGradientColor(IIF)I
    .locals 4

    const/4 p0, 0x0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_0

    return p1

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float v0, p3, p0

    if-ltz v0, :cond_1

    return p2

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p0, p3

    mul-float/2addr v0, p0

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p0

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p3

    add-float/2addr p1, p0

    float-to-int p0, p1

    const/16 p1, 0xff

    if-le v0, p1, :cond_2

    move v0, p1

    :cond_2
    if-le v1, p1, :cond_3

    move v1, p1

    :cond_3
    if-le v2, p1, :cond_4

    move v2, p1

    :cond_4
    if-le p0, p1, :cond_5

    move p0, p1

    :cond_5
    invoke-static {v0, v1, v2, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getMaskChars()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-interface {v0, v1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    return-object p0
.end method

.method private getSelectionMaskColor(F)I
    .locals 2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private initAnimator()V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_edit_text_shake_amplitude:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    new-instance v1, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0xd9

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$2;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$2;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [F

    const/4 v6, 0x0

    aput v2, v5, v6

    const/4 v2, 0x1

    aput v0, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v5, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$ShakeInterpolator;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x1c2

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$3;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v3, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v7, 0x85

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v7, 0x50

    invoke-virtual {v5, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$4;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {v5, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v6

    aput-object v0, v7, v2

    aput-object v5, v7, v3

    invoke-virtual {v1, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$5;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
    .end array-data
.end method

.method private isPassword()Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result p0

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isRtlMode()Z
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

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

.method private performOnErrorStateChangeAnimationEnd(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;->onErrorStateChangeAnimationEnd(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private performOnErrorStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;

    invoke-interface {v1, p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;->onErrorStateChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setErrorState(ZZ)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorState(ZZZ)V

    return-void
.end method

.method private setErrorState(ZZZ)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorState:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorState:Z

    .line 5
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->performOnErrorStateChanged(Z)V

    if-eqz p2, :cond_1

    .line 6
    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorStateWithAnimation(ZZ)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorStateWithoutAnimation(ZZ)V

    :goto_0
    return-void
.end method

.method private setErrorStateEnd(ZZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mAnimating:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    const p2, 0x3e99999a    # 0.3f

    invoke-direct {p0, p2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getSelectionMaskColor(F)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    if-eqz p3, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalHighlightColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setErrorStateWithAnimation(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->cancelAnimation()V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHighlightColor(I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextShakeOffset:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mAnimating:Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mIsFocusedAtAnimateBeginning:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorTrueAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->cancelAnimation()V

    invoke-direct {p0, v0, v0, p2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    :goto_0
    return-void
.end method

.method private setErrorStateWithoutAnimation(ZZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextShakeOffset:F

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    const/4 p1, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v0, p2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorStateEnd(ZZZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method addOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method drawCollapseText(Landroid/graphics/Canvas;Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, v1, v2, v3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedFraction()F

    move-result p2

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawModeBackgroundLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result p5

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, p5, v1, v2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget p5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mStrokeWidth:I

    sub-int p5, p2, p5

    int-to-float v2, p5

    int-to-float v3, p3

    int-to-float p5, p2

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    move-object v0, p1

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object p3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    invoke-virtual {p6}, Landroid/graphics/Paint;->getColor()I

    move-result p6

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, p6, v0, v1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result p6

    invoke-virtual {p3, p6}, Landroid/graphics/Paint;->setColor(I)V

    iget p3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mStrokeWidth:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    int-to-float p3, p4

    iget-object p6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    const/4 p4, 0x0

    move-object p0, p1

    move p1, p4

    move p4, p5

    move-object p5, p6

    invoke-virtual/range {p0 .. p5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method drawModeBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    instance-of v0, p2, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    check-cast p2, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->getCutout()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mStrokeWidth:I

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mHintColorChangeProgress:F

    invoke-direct {p0, p3, v1, v2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getGradientColor(IIF)I

    move-result p3

    invoke-virtual {p2, v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawableStateChanged([I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setState([I)Z

    return-void
.end method

.method init(III[FLcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalHighlightColor:I

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    iput p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mStrokeWidth:I

    const/4 p1, 0x2

    if-ne p3, p1, :cond_0

    const-string p1, "sans-serif-medium"

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p2, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextSize(F)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextGravity()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedTextGravity()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextGravity(I)V

    new-instance p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-direct {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mBoxBackground:Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->initAnimator()V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    new-instance p2, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper$1;-><init>(Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setHintInternal(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V

    invoke-virtual {p0, p5}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->updateLabelState(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V

    return-void
.end method

.method isErrorState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorState:Z

    return p0
.end method

.method onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mAnimating:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorState:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextShakeOffset:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextShakeOffset:F

    neg-float v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v5, v4, v3

    sub-int v6, v5, v1

    int-to-float v5, v5

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v5, v7

    iget v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextWidth:F

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    int-to-float v8, v6

    sub-float/2addr v7, v8

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    sget-object v10, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->tmpRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Landroid/widget/TextView;->getLineBounds(ILandroid/graphics/Rect;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v11

    if-nez v11, :cond_1

    int-to-float v11, v1

    iget v12, v10, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_1
    int-to-float v11, v3

    iget v12, v10, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v12, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    iget-object v13, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    int-to-float v12, v12

    iget v13, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    cmpl-float v12, v12, v13

    if-nez v12, :cond_3

    iget v12, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextWidth:F

    cmpl-float v8, v12, v8

    if-lez v8, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v8

    if-nez v8, :cond_2

    neg-float v6, v7

    invoke-virtual {p1, v6, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    invoke-virtual {p1, v6, v2, v5, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->getScrollX()I

    move-result v5

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSingleCOUIEditTextHeight:F

    invoke-virtual {p1, v5, v2, v6, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    iget-object v5, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskAlpha:F

    invoke-direct {p0, v6}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->getSelectionMaskColor(F)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v2, v5, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v2, v6, :cond_6

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    :goto_3
    int-to-float v1, v1

    move v4, v1

    move v6, v4

    goto :goto_4

    :cond_6
    if-ne v2, v5, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_7
    if-ne v2, v6, :cond_8

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isRtlMode()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    add-int/2addr v1, v4

    sub-int/2addr v1, v3

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mTextWidth:F

    div-float v2, v3, v2

    sub-float/2addr v1, v2

    add-float v2, v1, v3

    move v4, v1

    move v6, v2

    :goto_4
    iget v1, v10, Landroid/graphics/Rect;->top:I

    int-to-float v5, v1

    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mSelectionMaskPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    return-void
.end method

.method onLayout(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 5

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedBounds(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    return-void
.end method

.method removeOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOnErrorStateChangedListeners:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method setErrorColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mErrorColor:I

    return-void
.end method

.method setErrorState(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorState(ZZ)V

    return-void
.end method

.method setHintInternal(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOriginalTextColors(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mOriginalTextColors:Landroid/content/res/ColorStateList;

    return-void
.end method

.method updateLabelState(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V
    .locals 1

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpandedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
