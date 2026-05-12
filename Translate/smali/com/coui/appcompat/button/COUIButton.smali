.class public Lcom/coui/appcompat/button/COUIButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "SourceFile"


# static fields
.field public static final BORDERLESS_BUTTON_ANIM:I = 0x0

.field public static final COMMON_ROUND:I = 0x1

.field private static final DEFAULT_BRIGHTNESS_MAX_VALUE:F = 0.8f

.field public static final DEFAULT_RADIUS:F = -1.0f

.field public static final DIALOG_BORDERLESS_BUTTON_ANIM:I = 0x2

.field public static final FILL_BUTTON_ANIM:I = 0x1

.field private static final HALF_HEIGHT:F = 2.0f

.field private static final MAX_COLOR_VALUE:I = 0xff

.field public static final RADIUS_HALF_HEIGHT:I = -0x1

.field public static final SMOOTH_ROUND:I = 0x0

.field private static TAG:Ljava/lang/String; = "COUIButton"


# instance fields
.field private isLimitHeight:Z

.field private mAnimEnable:Z

.field private mAnimType:I

.field private final mBackgroundPath:Landroid/graphics/Path;

.field private mButtonHeight:I

.field private mButtonMaxHeight:I

.field private mButtonMaxWidth:I

.field private mButtonWidth:I

.field private mColorHsl:[F

.field private mCurrentBrightness:F

.field private mCurrentScale:F

.field private mDescText:Ljava/lang/String;

.field private mDisabledColor:I

.field private mDrawableColor:I

.field private final mFillPaint:Landroid/graphics/Paint;

.field private mFocusedStrokeRadius:F

.field private mIsDescType:Z

.field private mIsNeedVibrate:Z

.field private mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

.field private mMaxBrightness:F

.field private mMaxSingleLargeWidth:I

.field private mNeedLimitMaxWidth:Z

.field private mOnSizeChangeListener:Lcom/coui/appcompat/button/listener/OnSizeChangeListener;

.field private mOnTextChangeListener:Lcom/coui/appcompat/button/listener/OnTextChangeListener;

.field private mOplusOutLineRect:Landroid/graphics/Rect;

.field private mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

.field private mPressColor:I

.field private mRadius:F

.field private mRadiusOffset:F

.field private mRippleBackgroundDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

.field private mRoundType:I

.field private mScaleEnable:Z

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mStrokeColor:I

.field private mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

.field private mStrokePath:Landroid/graphics/Path;

.field private mStrokeRectF:Landroid/graphics/RectF;

.field private mStrokeWidth:F

.field private mStyle:I

.field private mText:Ljava/lang/String;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->buttonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mBackgroundPath:Landroid/graphics/Path;

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokePath:Landroid/graphics/Path;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mScaleEnable:Z

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a80000    # 21.0f

    .line 8
    iput v1, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    iput v1, p0, Lcom/coui/appcompat/button/COUIButton;->mCurrentBrightness:F

    .line 10
    iput v1, p0, Lcom/coui/appcompat/button/COUIButton;->mCurrentScale:F

    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/coui/appcompat/button/COUIButton;->mPressColor:I

    .line 12
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    .line 13
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRectF:Landroid/graphics/RectF;

    .line 14
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    const/4 v2, 0x3

    .line 15
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mColorHsl:[F

    .line 16
    iput-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->isLimitHeight:Z

    .line 17
    iput-boolean v1, p0, Lcom/coui/appcompat/button/COUIButton;->mNeedLimitMaxWidth:Z

    .line 18
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mOplusOutLineRect:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    .line 19
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStyle:I

    goto :goto_0

    .line 21
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mStyle:I

    .line 22
    :goto_0
    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 23
    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    .line 24
    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 25
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_animEnable:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimEnable:Z

    .line 26
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_animType:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    .line 27
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_couiRoundType:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mRoundType:I

    .line 28
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_needVibrate:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->mIsNeedVibrate:Z

    .line 29
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_scaleEnable:I

    iget-boolean v2, p0, Lcom/coui/appcompat/button/COUIButton;->mScaleEnable:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->mScaleEnable:Z

    .line 30
    iget-boolean p3, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimEnable:Z

    if-eqz p3, :cond_1

    .line 31
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_brightness:I

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mMaxBrightness:F

    .line 32
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_drawableRadius:I

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    .line 33
    invoke-direct {p0, p2}, Lcom/coui/appcompat/button/COUIButton;->adapterDisableColor(Landroid/content/res/TypedArray;)V

    .line 34
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    .line 35
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_strokeColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeColor:I

    .line 36
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_pressColor:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/button/COUIButton;->mPressColor:I

    .line 37
    sget p3, Lcom/support/appcompat/R$styleable;->COUIButton_closeLimitTextSize:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 38
    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->startAnimMode()V

    goto :goto_1

    :cond_1
    move p3, v1

    .line 39
    :goto_1
    sget v2, Lcom/support/appcompat/R$styleable;->COUIButton_strokeWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/appcompat/R$dimen;->coui_bordless_btn_stroke_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$dimen;->coui_single_larger_btn_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/button/COUIButton;->mMaxSingleLargeWidth:I

    .line 41
    sget v2, Lcom/support/appcompat/R$styleable;->COUIButton_isDescType:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/button/COUIButton;->mIsDescType:Z

    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    sget v1, Lcom/support/appcompat/R$styleable;->COUIButton_descText:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mText:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 46
    iget-boolean v1, p0, Lcom/coui/appcompat/button/COUIButton;->mIsDescType:Z

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/coui/appcompat/button/COUIButton;->setDescType(ZLjava/lang/String;)V

    .line 47
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/support/appcompat/R$dimen;->coui_button_radius_offset:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/button/COUIButton;->mRadiusOffset:F

    if-nez p3, :cond_3

    const/4 p2, 0x4

    .line 49
    invoke-static {p0, p2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptFontSize(Landroid/widget/TextView;I)V

    .line 50
    :cond_3
    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->initStatefulBackground(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->supportAddOnSmoothRound()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 52
    new-instance p1, Lcom/coui/appcompat/button/COUIButton$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/button/COUIButton$1;-><init>(Lcom/coui/appcompat/button/COUIButton;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 54
    invoke-static {p0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->clearShadow(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/support/appcompat/R$attr;->couiRoundCornerXXLWeight:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mWeight:F

    :cond_4
    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/button/COUIButton;->lambda$setText$0(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/button/COUIButton;)Lcom/oplus/graphics/OplusOutlineAdapter;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    return-object p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/button/COUIButton;Lcom/oplus/graphics/OplusOutlineAdapter;)Lcom/oplus/graphics/OplusOutlineAdapter;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mOplusOutline:Lcom/oplus/graphics/OplusOutlineAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mOplusOutLineRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method private adapterDisableColor(Landroid/content/res/TypedArray;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$attr;->couiColorDisable:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrId(Landroid/content/Context;II)I

    move-result v0

    sget v1, Lcom/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiColorDisable:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/support/appcompat/R$styleable;->COUIButton_disabledColor:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    :goto_0
    return-void
.end method

.method private drawButtonBackground(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimEnable:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    invoke-direct {p0, v3}, Lcom/coui/appcompat/button/COUIButton;->getStrokeButtonAnimatorColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->mRoundType:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius()F

    move-result v1

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v1}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius(Landroid/graphics/RectF;)F

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->mRadiusOffset:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeColor:I

    goto :goto_2

    :cond_2
    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->isOs16()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius(Landroid/graphics/RectF;)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->mWeight:F

    invoke-static {v1, v2, v3, v4}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getSmoothRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FF)Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokePath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeColor:I

    goto :goto_3

    :cond_4
    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    :goto_3
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mBackgroundPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeColor:I

    goto :goto_4

    :cond_6
    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    :goto_4
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getInstance()Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    invoke-direct {p0, v2}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius(Landroid/graphics/RectF;)F

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->mRadiusOffset:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/coui/appcompat/roundRect/COUIRoundRectUtil;->getPath(Landroid/graphics/RectF;F)Landroid/graphics/Path;

    move-result-object v1

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    :goto_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_8
    return-void
.end method

.method private drawMaskAndStroke(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->draw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private getAnimatorColor()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->getCompositeMaskColor()I

    move-result v0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    invoke-static {v0, p0}, Lu/d;->o(II)I

    move-result p0

    return p0
.end method

.method private getDescTypeText(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 12

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v7, v0, v1

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int v6, v0, v1

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int v8, v0, v1

    new-instance v0, Lcom/coui/appcompat/button/DescButtonTextSpan;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v10

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->isLayoutRTL()Z

    move-result v11

    move-object v2, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v11}, Lcom/coui/appcompat/button/DescButtonTextSpan;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIIILandroid/graphics/Paint;Z)V

    new-instance p0, Landroid/text/SpannableString;

    const-string p1, "  "

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x21

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method private getDrawableRadius(Landroid/graphics/Rect;)F
    .locals 3

    .line 6
    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->supportAddOnSmoothRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v2

    return p0

    .line 8
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v2

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mRadiusOffset:F

    sub-float/2addr p1, p0

    return p1

    :cond_1
    return v0
.end method

.method private getDrawableRadius(Landroid/graphics/RectF;)F
    .locals 3

    .line 2
    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->supportAddOnSmoothRound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p0, v2

    return p0

    .line 4
    :cond_0
    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v2

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mRadiusOffset:F

    sub-float/2addr p1, p0

    return p1

    :cond_1
    return v0
.end method

.method private getStrokeButtonAnimatorColor(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private initStatefulBackground(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->default_focus_stroke_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/COUIButton;->mFocusedStrokeRadius:F

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskPath(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-direct {v1, p1}, Lcom/coui/appcompat/state/COUIStrokeDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    iget-object v3, p0, Lcom/coui/appcompat/button/COUIButton;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setStrokePath(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    new-instance v1, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-direct {v1, p1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mRippleBackgroundDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCustomRippleMask()V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mRippleBackgroundDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mBackgroundPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setMaskPath(Landroid/graphics/Path;)V

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mRippleBackgroundDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    new-instance p1, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {p1, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    iget-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->mScaleEnable:Z

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->setScaleEnable(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->setAnimType(I)V

    return-void
.end method

.method private isLayoutRTL()Z
    .locals 1

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOs16()Z
    .locals 1

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$setText$0(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->getDescTypeText(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private limitLargeButtonMaxWidth(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mNeedLimitMaxWidth:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxWidth:I

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaxSingleLargeWidth:I

    if-le v0, p0, :cond_0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private performHapticFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mIsNeedVibrate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private setIsDescTypeStyle()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_btn_desc_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_btn_desc_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_btn_desc_height_min:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getDpG2Size(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/button/COUIButton;->setMinHeight(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumWidth(I)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private startAnimMode()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private supportAddOnSmoothRound()Z
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->isOs16()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mRoundType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateRoundRectPath()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mBackgroundPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius()F

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StatefulDrawable;->setHoverEntered()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isHovered()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StatefulDrawable;->setHoverExited()V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->updateRoundRectPath()V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatButton;->drawableStateChanged()V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    return-void
.end method

.method public getDescText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    return-object p0
.end method

.method public getDrawableColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    return p0
.end method

.method public getDrawableRadius()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getMeasureMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxHeight:I

    return p0
.end method

.method public getMeasureMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxWidth:I

    return p0
.end method

.method public getRoundType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mRoundType:I

    return p0
.end method

.method public getSolidColor()I
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimEnable:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->getAnimatorColor()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->getSolidColor()I

    move-result p0

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mText:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isDescType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mIsDescType:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLimitHeight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/button/COUIButton;->isLimitHeight:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->drawButtonBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/button/COUIButton;->drawMaskAndStroke(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p1}, Lcom/coui/appcompat/state/StatefulDrawable;->setFocusEntered()V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1}, Lcom/coui/appcompat/state/StatefulDrawable;->setFocusEntered()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p1}, Lcom/coui/appcompat/state/StatefulDrawable;->setFocusExited()V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1}, Lcom/coui/appcompat/state/StatefulDrawable;->setFocusExited()V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    const/4 p2, 0x1

    if-ne p0, p2, :cond_1

    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/coui/appcompat/button/COUIButton;->TAG:Ljava/lang/String;

    const-string p1, "Button parent view should set clip children false to make drawing focused stroke effect works."

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/AppCompatButton;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->supportAddOnSmoothRound()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    add-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->left:F

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, p0

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeRectF:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->mTmpRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    iget p0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float p5, p0, p4

    add-float/2addr p3, p5

    iput p3, p1, Landroid/graphics/RectF;->top:F

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    div-float p5, p0, p4

    add-float/2addr p3, p5

    iput p3, p1, Landroid/graphics/RectF;->left:F

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    div-float p5, p0, p4

    sub-float/2addr p3, p5

    iput p3, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    div-float/2addr p0, p4

    sub-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxWidth:I

    iput v4, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonWidth:I

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonWidth:I

    :goto_0
    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonMaxHeight:I

    iput v0, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonHeight:I

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/coui/appcompat/button/COUIButton;->mButtonHeight:I

    :goto_1
    invoke-direct {p0, v1}, Lcom/coui/appcompat/button/COUIButton;->limitLargeButtonMaxWidth(I)I

    move-result v0

    if-eqz v0, :cond_2

    move p1, v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mOnSizeChangeListener:Lcom/coui/appcompat/button/listener/OnSizeChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/button/listener/OnSizeChangeListener;->onSizeChanged(Landroid/view/View;IIII)V

    :cond_0
    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mOnTextChangeListener:Lcom/coui/appcompat/button/listener/OnTextChangeListener;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/coui/appcompat/button/listener/OnTextChangeListener;->onTextChanged(Landroid/view/View;Ljava/lang/CharSequence;III)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimEnable:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->performHapticFeedback()V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StatefulDrawable;->setTouchExited()V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->performHapticFeedback()V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/StatefulDrawable;->setTouchEntered()V

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/button/COUIButton;->mStyle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->mStyle:I

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIButton:[I

    iget v4, p0, Lcom/coui/appcompat/button/COUIButton;->mStyle:I

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    invoke-direct {p0, v3}, Lcom/coui/appcompat/button/COUIButton;->adapterDisableColor(Landroid/content/res/TypedArray;)V

    sget v0, Lcom/support/appcompat/R$styleable;->COUIButton_drawableColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIButton_strokeColor:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeColor:I

    sget v0, Lcom/support/appcompat/R$styleable;->COUIButton_android_textColor:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method public setAnimEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimEnable:Z

    return-void
.end method

.method public setAnimType(I)V
    .locals 3

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mAnimType:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setDrawableEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskType(I)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setDrawableEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mRippleBackgroundDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->setDrawableEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setDrawableEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaskDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskType(I)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeDrawable:Lcom/coui/appcompat/state/COUIStrokeDrawable;

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/state/COUIStrokeDrawable;->setDrawableEnabled(Z)V

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mRippleBackgroundDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/state/RippleStatefulDrawable;->setDrawableEnabled(Z)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->updateRoundRectPath()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setViewBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setDescText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDescType(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->mIsDescType:Z

    iput-object p2, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    invoke-direct {p0}, Lcom/coui/appcompat/button/COUIButton;->setIsDescTypeStyle()V

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mDisabledColor:I

    return-void
.end method

.method public setDrawableColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mDrawableColor:I

    return-void
.end method

.method public setDrawableRadius(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mRadius:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setIsNeedVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->mIsNeedVibrate:Z

    return-void
.end method

.method public setLimitHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->isLimitHeight:Z

    return-void
.end method

.method public setMaxBrightness(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mMaxBrightness:F

    return-void
.end method

.method public setMinHeight(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->isDescType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_btn_large_height_min:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    return-void
.end method

.method public setNeedLimitMaxWidth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->mNeedLimitMaxWidth:Z

    return-void
.end method

.method public setOnSizeChangeListener(Lcom/coui/appcompat/button/listener/OnSizeChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mOnSizeChangeListener:Lcom/coui/appcompat/button/listener/OnSizeChangeListener;

    return-void
.end method

.method public setOnTextChangeListener(Lcom/coui/appcompat/button/listener/OnTextChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mOnTextChangeListener:Lcom/coui/appcompat/button/listener/OnTextChangeListener;

    return-void
.end method

.method public setRoundType(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid roundType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/coui/appcompat/button/COUIButton;->mRoundType:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mRoundType:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public setScaleEnable(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/coui/appcompat/button/COUIButton;->mScaleEnable:Z

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {v0, p0, p1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->enableScaleEffect(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->disableScaleEffect()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeColor:I

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/button/COUIButton;->mStrokeWidth:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/button/COUIButton;->mIsDescType:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/button/COUIButton;->mDescText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/button/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/coui/appcompat/button/a;-><init>(Lcom/coui/appcompat/button/COUIButton;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton;->mText:Ljava/lang/String;

    return-void
.end method
