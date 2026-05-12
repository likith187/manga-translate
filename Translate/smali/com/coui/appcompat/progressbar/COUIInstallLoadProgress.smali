.class public Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;
.super Lcom/coui/appcompat/progressbar/COUILoadProgress;
.source "SourceFile"


# static fields
.field private static final CIRCLE_BRIGHTNESS_HOLDER:Ljava/lang/String; = "circleBrightnessHolder"

.field private static final CIRCLE_IN_ALPHA_HOLDER:Ljava/lang/String; = "circleInAlphaHolder"

.field private static final CIRCLE_MAX_ALPHA:I = 0xff

.field private static final CIRCLE_OUT_ALPHA_HOLDER:Ljava/lang/String; = "circleOutAlphaHolder"

.field private static final CIRCLE_RADIUS_HOLDER:Ljava/lang/String; = "circleRadiusHolder"

.field private static final DEFAULT_BRIGHTNESS_MAX_VALUE:F = 0.8f

.field private static final DEFAULT_MIN_PRESS_FEEDBACK:F = 0.005f

.field private static final DEFAULT_NARROW_FINAL_VALUE:F = 0.92f

.field private static final DEFAULT_SCALE_PARAMETER:F = 0.05f

.field private static final DEFAULT_SCALE_PERCENT:F = 0.4f

.field private static final HOLDER_BRIGHTNESS:Ljava/lang/String; = "brightnessHolder"

.field private static final HOLDER_NARROW_FONT:Ljava/lang/String; = "narrowHolderFont"

.field private static final HOLDER_NARROW_X:Ljava/lang/String; = "narrowHolderX"

.field private static final HOLDER_NARROW_Y:Ljava/lang/String; = "narrowHolderY"

.field public static final LOAD_STYLE_BIG_ROUND:I = 0x1

.field public static final LOAD_STYLE_CIRCLE:I = 0x2

.field public static final LOAD_STYLE_DEFAULT:I = 0x0

.field private static final MAX_COLOR:I = 0xff

.field private static final NORMAL_ANIMATOR_DURATION:I = 0x154

.field private static final ONE_POINT_FIVE:F = 1.5f

.field private static final POINT_FIVE:D = 0.5

.field private static final PRESS_ANIMATOR_DURATION:I = 0xc8

.field private static final mAttrArray:[I


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mApostrophe:Ljava/lang/String;

.field private mBtnTextColor:I

.field private mBtnTextColorChanged:Z

.field private mBtnTextColorStateList:Landroid/content/res/ColorStateList;

.field private mCircleLoadBitmap:Landroid/graphics/Bitmap;

.field private mCirclePaint:Landroid/graphics/Paint;

.field private mCirclePauseBitmap:Landroid/graphics/Bitmap;

.field private mCircleReloadBitmap:Landroid/graphics/Bitmap;

.field private mColorHsl:[F

.field private mColorPrimary:I

.field private mColorSecondary:I

.field private mColorWhite:I

.field private mContext:Landroid/content/Context;

.field private mCurrentBrightness:F

.field private mCurrentCircleRadius:F

.field private mCurrentInBitmapAlpha:I

.field private mCurrentOutBitmapAlpha:I

.field private mCurrentRoundBorderRadius:I

.field private mDefaultCircleRadius:I

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultTextSize:I

.field private mDefaultWidth:I

.field private mDisabledColor:I

.field private mDownloadingContentDecrpition:Ljava/lang/String;

.field private mExpandOffsetX:I

.field private mExpandOffsetY:I

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHasBrightness:Z

.field private mInBitmapPaint:Landroid/graphics/Paint;

.field private mInstallGiftBg:Landroid/graphics/drawable/Drawable;

.field private mIsChangeTextColor:Z

.field private mIsNeedVibrate:Z

.field private mLoadStyle:I

.field private mLocale:Ljava/util/Locale;

.field private mMaxBrightness:F

.field private mNarrowOffsetFont:F

.field private mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mNormalAnimator:Landroid/animation/ValueAnimator;

.field private mOplusPath:Lcom/oplus/graphics/OplusPathAdapter;

.field private mOutBitmapPaint:Landroid/graphics/Paint;

.field private mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mPressedAnimator:Landroid/animation/ValueAnimator;

.field private mRadiusOffset:F

.field private mRoundRectPaint:Landroid/graphics/Paint;

.field private mRoundRectPath:Landroid/graphics/Path;

.field private mSpace:I

.field private mStyle:I

.field private mSurpassProgressColor:I

.field private mTextColor:I

.field private mTextPadding:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextView:Ljava/lang/String;

.field private mThemeColor:I

.field private mThemeColorStateList:Landroid/content/res/ColorStateList;

.field private mThemeSecondaryColor:I

.field private mThemeSecondaryColorStateList:Landroid/content/res/ColorStateList;

.field private mTouchModeCircleRadius:I

.field private mTouchModeHeight:I

.field private mTouchModeWidth:I

.field private mUserTextColor:I

.field private mUserTextSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    sget v1, Lcom/support/appcompat/R$attr;->couiColorSecondary:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mAttrArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/progressbar/R$attr;->couiInstallLoadProgressStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/progressbar/R$style;->Widget_COUI_COUILoadProgress_InstallDownload:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    const-string v0, "COUIInstallLoadProgress"

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->DEBUG:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    .line 8
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mUserTextSize:I

    .line 9
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPadding:I

    .line 10
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 12
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 13
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    .line 14
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    .line 15
    iput-boolean v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    .line 16
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    .line 17
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeCircleRadius:I

    .line 18
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    const/4 v3, 0x0

    .line 19
    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    const/16 v3, 0xff

    .line 20
    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentInBitmapAlpha:I

    .line 21
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentOutBitmapAlpha:I

    .line 22
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    .line 23
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    .line 24
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    .line 25
    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mInstallGiftBg:Landroid/graphics/drawable/Drawable;

    .line 26
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    .line 27
    iput-boolean v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorChanged:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 28
    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentBrightness:F

    const/4 v3, -0x1

    .line 29
    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mUserTextColor:I

    .line 30
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    .line 31
    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    .line 32
    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    const/4 v1, 0x3

    .line 33
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorHsl:[F

    .line 34
    invoke-static {p0, v2}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    .line 35
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mStyle:I

    goto :goto_0

    .line 37
    :cond_0
    iput p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mStyle:I

    .line 38
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mAttrArray:[I

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 40
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    .line 41
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorSecondary:I

    .line 42
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    .line 44
    sget-object v1, Lcom/support/progressbar/R$styleable;->COUILoadProgress:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/progressbar/R$color;->coui_install_load_progress_text_color_in_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorWhite:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/progressbar/R$color;->coui_install_load_progress_text_color_in_progress:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSurpassProgressColor:I

    .line 47
    sget v3, Lcom/support/progressbar/R$styleable;->COUILoadProgress_loadingButtonNeedVibrate:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsNeedVibrate:Z

    .line 48
    sget v3, Lcom/support/progressbar/R$styleable;->COUILoadProgress_couiDefaultDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 49
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    :cond_1
    sget v3, Lcom/support/progressbar/R$styleable;->COUILoadProgress_couiState:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 51
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->setState(I)V

    .line 52
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_textsize:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 54
    sget-object v3, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiStyle:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 56
    invoke-virtual {p0, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setLoadStyle(I)V

    .line 57
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallGiftBg:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mInstallGiftBg:Landroid/graphics/drawable/Drawable;

    .line 58
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallViewHeight:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    .line 59
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallViewWidth:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    const/high16 p3, 0x3fc00000    # 1.5f

    .line 60
    invoke-direct {p0, p2, p3, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    .line 61
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_brightness:I

    const p3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mMaxBrightness:F

    .line 62
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_disabledColor:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDisabledColor:I

    .line 63
    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    new-instance p2, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p2}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 65
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    if-ne p2, v0, :cond_2

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_round_border_radius:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_round_border_radius_small:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 68
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->isZhLanguage(Ljava/util/Locale;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_width_in_foreign_language:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 70
    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    add-int/2addr p4, p2

    iput p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    .line 71
    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    add-int/2addr p4, p2

    iput p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    .line 72
    :cond_3
    :goto_1
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallDefaultColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 73
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallPadding:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPadding:I

    .line 74
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallTextview:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    .line 75
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiInstallTextsize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextSize:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->fontScale:F

    .line 77
    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextSize:I

    int-to-float p4, p4

    invoke-static {p4, p2, p3}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextSize:I

    .line 78
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    if-nez p2, :cond_5

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$string;->coui_install_load_progress_apostrophe:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    goto :goto_2

    .line 80
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_circle_round_border_radius:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    .line 81
    :cond_5
    :goto_2
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiThemeColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeColorStateList(Landroid/content/res/ColorStateList;)V

    .line 82
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiThemeColorSecondary:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeSecondaryColorStateList(Landroid/content/res/ColorStateList;)V

    .line 83
    sget p2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_couiThemeTextColor:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setBtnTextColorStateList(Landroid/content/res/ColorStateList;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_round_border_radius_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRadiusOffset:F

    .line 86
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->isOs16()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 87
    new-instance p1, Lcom/oplus/graphics/OplusPathAdapter;

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    invoke-direct {p1, p2, v0}, Lcom/oplus/graphics/OplusPathAdapter;-><init>(Landroid/graphics/Path;I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mOplusPath:Lcom/oplus/graphics/OplusPathAdapter;

    .line 88
    new-instance p1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$1;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_6
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$1001(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Z
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->performClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentBrightness:F

    return p1
.end method

.method static synthetic access$202(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    return p1
.end method

.method static synthetic access$302(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->updateRoundRectPath()V

    return-void
.end method

.method static synthetic access$602(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    return p1
.end method

.method static synthetic access$701(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)Z
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->performClick()Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentInBitmapAlpha:I

    return p1
.end method

.method static synthetic access$902(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentOutBitmapAlpha:I

    return p1
.end method

.method private addApostrophe()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getDisplayText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPadding:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getDisplayText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->isEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mApostrophe:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    :cond_0
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

.method private dip2px(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p0

    float-to-double p0, p2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    double-to-int p0, p0

    return p0
.end method

.method private getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private getCurrentColor(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDisabledColor:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorHsl:[F

    invoke-static {p1, v0}, Lu/d;->k(I[F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorHsl:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentBrightness:F

    mul-float/2addr v2, p0

    aput v2, v0, v1

    invoke-static {v0}, Lu/d;->a([F)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    const/16 v2, 0xff

    if-le v0, v2, :cond_1

    move v0, v2

    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    :cond_2
    if-le p0, v2, :cond_3

    move p0, v2

    :cond_3
    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private getDefaultSize(IFZ)I
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->dip2px(Landroid/content/Context;F)I

    move-result p0

    :goto_0
    sub-int/2addr p1, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p3, p2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->dip2px(Landroid/content/Context;F)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    goto :goto_0

    :goto_1
    return p1
.end method

.method private getDisplayText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float p2, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private init()V
    .locals 7

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mUserTextSize:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextSize:I

    :cond_1
    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mUserTextColor:I

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextColor:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiDefaultTextColor:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextColor:I

    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/graphics/Paint;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->addApostrophe()V

    return-void
.end method

.method private static isChinese(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[\u4e00-\u9fa5]{1}$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v2, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private isEnglish(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->isChinese(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
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

.method private isZhLanguage(Ljava/util/Locale;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "zh"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onDrawButtonDrawable(Landroid/graphics/Canvas;FFFF)V
    .locals 7

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    int-to-float v3, v0

    sub-float v3, p4, v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v4, v1

    sub-float v4, p5, v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v3

    add-int/2addr v1, v4

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextColor:I

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-boolean v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawableReverseColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawableReverseColor:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSurpassProgressColor:I

    invoke-virtual {v0, v1, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    int-to-float p2, p2

    sub-float p2, p4, p2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawableReverseColor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    :cond_1
    return-void
.end method

.method private onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p5, :cond_4

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz p6, :cond_4

    invoke-virtual {p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_2

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_1

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result p3

    goto :goto_0

    :cond_1
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColor:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p4, :cond_3

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeSecondaryColorStateList:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_2

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorSecondary:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result p3

    goto :goto_1

    :cond_2
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    :goto_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_3
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentInBitmapAlpha:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentOutBitmapAlpha:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getColor()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->drawColor(I)V

    int-to-float p2, p2

    int-to-float p3, p3

    iget-object p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6, p2, p3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_4
    :goto_2
    return-void
.end method

.method private onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V
    .locals 0

    invoke-virtual {p1, p7, p8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_0

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColor:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    if-nez p6, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeSecondaryColorStateList:Landroid/content/res/ColorStateList;

    if-nez p3, :cond_1

    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorSecondary:I

    invoke-direct {p0, p3}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getCurrentColor(I)I

    move-result p3

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    :goto_1
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    neg-float p0, p7

    neg-float p2, p8

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private onDrawText(Landroid/graphics/Canvas;FFFF)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextSize:I

    int-to-float v1, v1

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPadding:I

    int-to-float v2, v1

    sub-float v0, p4, v0

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    int-to-float v3, v3

    sub-float v3, p5, v3

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v0, v0

    sub-float/2addr v3, v0

    div-float/2addr v3, v1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSurpassProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget p4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    int-to-float p4, p4

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    int-to-float p2, p2

    sub-float p2, p4, p2

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    :goto_0
    iget-object p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object p3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v2, v3, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    :cond_1
    return-void
.end method

.method private performHapticFeedback()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsNeedVibrate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    return-void
.end method

.method private performTouchEndAnim(Z)V
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performHapticFeedback()V

    iget-boolean v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mHasBrightness:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const-wide/16 v4, 0x154

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_2

    if-eq v3, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    int-to-float v3, v3

    new-array v7, v0, [F

    aput p1, v7, v2

    aput v3, v7, v1

    const-string p1, "circleRadiusHolder"

    invoke-static {p1, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentBrightness:F

    new-array v0, v0, [F

    aput v3, v0, v2

    aput v6, v0, v1

    const-string v1, "circleBrightnessHolder"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v1, "circleInAlphaHolder"

    const/16 v3, 0xff

    filled-new-array {v2, v3}, [I

    move-result-object v6

    invoke-static {v1, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const-string v6, "circleOutAlphaHolder"

    filled-new-array {v3, v2}, [I

    move-result-object v3

    invoke-static {v6, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    filled-new-array {p1, v0, v1, v3}, [Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$6;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$6;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$7;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$7;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentBrightness:F

    new-array v7, v0, [F

    aput v3, v7, v2

    aput v6, v7, v1

    const-string v3, "brightnessHolder"

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget v7, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    int-to-float v7, v7

    const/4 v8, 0x0

    new-array v9, v0, [F

    aput v7, v9, v2

    aput v8, v9, v1

    const-string v7, "narrowHolderX"

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget v9, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    int-to-float v9, v9

    new-array v10, v0, [F

    aput v9, v10, v2

    aput v8, v10, v1

    const-string v8, "narrowHolderY"

    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    iget v9, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNarrowOffsetFont:F

    new-array v0, v0, [F

    aput v9, v0, v2

    aput v6, v0, v1

    const-string v1, "narrowHolderFont"

    invoke-static {v1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v3, v7, v8, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$4;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;

    invoke-direct {v1, p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$5;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    iput-boolean v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mHasBrightness:Z

    return-void
.end method

.method private performTouchStartAnim()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mHasBrightness:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mNormalAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v3}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->cancelAnim(Landroid/animation/ValueAnimator;)V

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const-wide/16 v4, 0xc8

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_2

    if-eq v3, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    int-to-float v6, v6

    const v7, 0x3f666666    # 0.9f

    mul-float/2addr v6, v7

    new-array v7, v2, [F

    aput v3, v7, v0

    aput v6, v7, v1

    const-string v3, "circleRadiusHolder"

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iget v6, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentBrightness:F

    iget v7, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mMaxBrightness:F

    new-array v2, v2, [F

    aput v6, v2, v0

    aput v7, v2, v1

    const-string v0, "circleBrightnessHolder"

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    filled-new-array {v3, v0}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$3;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mMaxBrightness:F

    const/high16 v6, 0x3f800000    # 1.0f

    new-array v7, v2, [F

    aput v6, v7, v0

    aput v3, v7, v1

    const-string v3, "brightnessHolder"

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3d4ccccd    # 0.05f

    mul-float/2addr v6, v7

    const/4 v8, 0x0

    new-array v9, v2, [F

    aput v8, v9, v0

    aput v6, v9, v1

    const-string v6, "narrowHolderX"

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    new-array v7, v2, [F

    aput v8, v7, v0

    aput v9, v7, v1

    const-string v0, "narrowHolderY"

    invoke-static {v0, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v7, "narrowHolderFont"

    invoke-static {v7, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    filled-new-array {v3, v6, v0, v2}, [Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress$2;-><init>(Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mPressedAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    iput-boolean v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mHasBrightness:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f6b851f    # 0.92f
    .end array-data
.end method

.method private updateRoundRectPath()V
    .locals 8

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    double-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v6, v1

    mul-double/2addr v6, v2

    div-double/2addr v6, v4

    double-to-float v1, v6

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    sub-float v4, v0, v3

    sub-float v5, v1, v3

    add-float/2addr v0, v3

    add-float/2addr v1, v3

    invoke-direct {v2, v4, v5, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentRoundBorderRadius:I

    int-to-float p0, p0

    invoke-static {v0, v2, p0}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->isOs16()Z

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mOplusPath:Lcom/oplus/graphics/OplusPathAdapter;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v3

    mul-float/2addr v1, v3

    div-float/2addr v1, v2

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v5

    mul-float/2addr v3, v5

    div-float/2addr v3, v2

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    goto :goto_0

    :cond_1
    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRadiusOffset:F

    sub-float/2addr v3, v0

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPath:Landroid/graphics/Path;

    invoke-static {p0, v4, v3}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;F)Landroid/graphics/Path;

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->drawableStateChanged()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    const-class p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget v0, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColor:I

    :goto_0
    invoke-static {v0, v1}, Lcom/coui/appcompat/tintimageview/COUITintUtil;->tintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget v0, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_reload:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget v0, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_pause:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    :cond_6
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_width_in_foreign_language:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLocale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->isZhLanguage(Ljava/util/Locale;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultWidth:I

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-super {p0}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-super/range {p0 .. p1}, Lcom/coui/appcompat/progressbar/COUILoadProgress;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    int-to-float v11, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    int-to-float v12, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    sub-int/2addr v0, v1

    int-to-float v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetY:I

    sub-int/2addr v0, v1

    int-to-float v14, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    const/4 v1, 0x3

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v19, 0x0

    if-ne v0, v1, :cond_3

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v8, :cond_0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    double-to-float v3, v0

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_c

    :cond_0
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-boolean v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorChanged:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColor:I

    goto :goto_0

    :cond_1
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorWhite:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x0

    iput-boolean v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_c

    :cond_2
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawButtonDrawable(Landroid/graphics/Canvas;FFFF)V

    goto/16 :goto_c

    :cond_3
    const/4 v6, 0x1

    if-nez v0, :cond_9

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v8, :cond_4

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    double-to-float v2, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v15

    double-to-float v3, v0

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v21, v4

    move/from16 v4, v20

    move v15, v6

    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    move/from16 v16, v7

    goto :goto_1

    :cond_4
    move v15, v6

    if-ne v0, v15, :cond_5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move/from16 v16, v7

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    goto :goto_1

    :cond_5
    move/from16 v16, v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    :goto_1
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v0, v15, :cond_7

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-boolean v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorChanged:Z

    if-eqz v1, :cond_6

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColor:I

    goto :goto_2

    :cond_6
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorWhite:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_7
    if-nez v0, :cond_a

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorStateList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_8

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    goto :goto_3

    :cond_8
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColor:I

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    :cond_9
    move v15, v6

    move/from16 v16, v7

    :cond_a
    :goto_4
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    const/4 v8, 0x2

    if-eq v0, v15, :cond_c

    if-ne v0, v8, :cond_b

    goto :goto_6

    :cond_b
    :goto_5
    move v15, v8

    goto/16 :goto_b

    :cond_c
    :goto_6
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-ne v1, v8, :cond_e

    if-ne v0, v15, :cond_d

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v2

    double-to-float v3, v0

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_d
    if-ne v0, v8, :cond_b

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-double v0, v0

    mul-double v0, v0, v17

    div-double/2addr v0, v2

    double-to-float v3, v0

    iget-object v5, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    iget-object v6, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v4

    move v4, v7

    invoke-direct/range {v0 .. v6}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawCircle(Landroid/graphics/Canvas;FFZLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto :goto_5

    :cond_e
    iget-boolean v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mIsUpdateWithAnimation:Z

    if-eqz v0, :cond_f

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mVisualProgress:F

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    :goto_7
    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_8

    :cond_f
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    int-to-float v0, v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    goto :goto_7

    :goto_8
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    iget v2, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mExpandOffsetX:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, v2

    iput v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move/from16 v7, v16

    move v15, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/o0;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_10

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    int-to-float v0, v0

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v1, v1

    invoke-virtual {v10, v11, v12, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move/from16 v7, v16

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    move/from16 v7, v16

    invoke-virtual {v10, v7, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSpace:I

    int-to-float v1, v1

    sub-float v1, v13, v1

    add-float/2addr v1, v7

    iget v2, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v2, v2

    invoke-virtual {v10, v1, v12, v13, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    const/high16 v1, -0x80000000

    invoke-virtual {v10, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_9
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-eq v0, v15, :cond_11

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawRoundRect(Landroid/graphics/Canvas;FFFFZFF)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsChangeTextColor:Z

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorStateList:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_12

    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    goto :goto_a

    :cond_12
    iget v1, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColor:I

    :goto_a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_b
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    if-eq v0, v15, :cond_14

    iget-object v0, v9, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawText(Landroid/graphics/Canvas;FFFF)V

    goto :goto_c

    :cond_13
    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v0

    iget v0, v9, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->onDrawButtonDrawable(Landroid/graphics/Canvas;FFFF)V

    :cond_14
    :goto_c
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mMax:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    iget p0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mProgress:I

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUILoadProgress;->mState:I

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDownloadingContentDecrpition:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    iget p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    iget p2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->init()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->updateRoundRectPath()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performTouchEndAnim(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_2

    cmpl-float v0, p1, v3

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_2

    move v2, v1

    :cond_2
    invoke-direct {p0, v2}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performTouchEndAnim(Z)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performHapticFeedback()V

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->performTouchStartAnim()V

    :goto_0
    return v1
.end method

.method public refresh()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mAttrArray:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorPrimary:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mColorSecondary:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mStyle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "attr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress:[I

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mStyle:I

    invoke-virtual {v0, v3, v2, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v2, "style"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress:[I

    iget v4, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mStyle:I

    invoke-virtual {v0, v3, v2, v1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    sget v0, Lcom/support/progressbar/R$styleable;->COUIInstallLoadProgress_disabledColor:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDisabledColor:I

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    return-void
.end method

.method public setBtnTextColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColor:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorChanged:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBtnTextColorBySurpassProgress(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mSurpassProgressColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setBtnTextColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mBtnTextColorStateList:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setBtnTextColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setBtnTextColor(I)V

    :goto_0
    return-void
.end method

.method public setDefaultTextSize(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultTextSize:I

    return-void
.end method

.method public setDisabledColor(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDisabledColor:I

    return-void
.end method

.method public setDownloadingContentDecrpition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDownloadingContentDecrpition:Ljava/lang/String;

    return-void
.end method

.method public setIsNeedVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mIsNeedVibrate:Z

    return-void
.end method

.method public setLoadStyle(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iput v1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mInBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mOutBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget p1, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    sget p1, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_reload:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleReloadBitmap:Landroid/graphics/Bitmap;

    sget p1, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_pause:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCirclePauseBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/support/progressbar/R$dimen;->coui_install_download_progress_default_circle_radius:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeCircleRadius:I

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {p0, p1, v1, v0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getDefaultSize(IFZ)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mDefaultCircleRadius:I

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCurrentCircleRadius:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mLoadStyle:I

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mRoundRectPaint:Landroid/graphics/Paint;

    :goto_0
    return-void
.end method

.method public setMaxBrightness(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mMaxBrightness:F

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextView:Ljava/lang/String;

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPaint:Landroid/text/TextPaint;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->addApostrophe()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mUserTextColor:I

    :cond_0
    return-void
.end method

.method public setTextId(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public setTextPadding(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTextPadding:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mUserTextSize:I

    :cond_0
    return-void
.end method

.method public setThemeColor(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColor:I

    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    sget p1, Lcom/support/progressbar/R$drawable;->coui_install_load_progress_circle_load:I

    invoke-direct {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->getBitmapFromVectorDrawable(I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColor:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/tintimageview/COUITintUtil;->tintBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mCircleLoadBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThemeColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeColorStateList:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeColor(I)V

    :goto_0
    return-void
.end method

.method public setThemeSecondaryColor(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeSecondaryColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setThemeSecondaryColorStateList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mThemeSecondaryColorStateList:Landroid/content/res/ColorStateList;

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeSecondaryColor(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->setThemeSecondaryColor(I)V

    :goto_0
    return-void
.end method

.method public setTouchModeHeight(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeHeight:I

    return-void
.end method

.method public setTouchModeWidth(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/progressbar/COUIInstallLoadProgress;->mTouchModeWidth:I

    return-void
.end method
