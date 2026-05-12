.class public Lcom/coui/appcompat/edittext/COUIEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;,
        Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;,
        Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;,
        Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;
    }
.end annotation


# static fields
.field private static final ALPHA_VALUE:I = 0xff

.field private static final BACKGROUND_ANIMATION_DURATION:I = 0xfa

.field private static final LABEL_SCALE_ANIMATION_DURATION:I = 0xc8

.field private static final LOG_DBG:Z = false

.field public static final MODE_BACKGROUND_LINE:I = 0x1

.field public static final MODE_BACKGROUND_NONE:I = 0x0

.field public static final MODE_BACKGROUND_NO_LINE:I = 0x3

.field public static final MODE_BACKGROUND_RECT:I = 0x2

.field private static final POINT_FIVE:D = 0.5

.field private static final TAG:Ljava/lang/String; = "COUIEditText"

.field private static final TWO:D = 2.0


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAnimator1:Landroid/animation/ValueAnimator;

.field private mAnimator2:Landroid/animation/ValueAnimator;

.field private mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mBoxBackgroundMode:I

.field private mBoxCornerRadiusBottomEnd:F

.field private mBoxCornerRadiusBottomStart:F

.field private mBoxCornerRadiusTopEnd:F

.field private mBoxCornerRadiusTopStart:F

.field private mBoxStrokeColor:I

.field private final mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

.field private mCOUITextWatcher:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

.field private mCancelDeleteIcon:Ljava/lang/Runnable;

.field private mClickSelectionPosition:I

.field private mContext:Landroid/content/Context;

.field private mCustomEditTextTouchListener:Landroid/view/View$OnTouchListener;

.field private mDefaultHintTextColor:Landroid/content/res/ColorStateList;

.field private mDefaultStrokeColor:I

.field private mDeletable:Z

.field private mDeleteButton:Ljava/lang/String;

.field private mDeleteIconHeight:I

.field private mDeleteIconWidth:I

.field private mDeleteNormal:Landroid/graphics/drawable/Drawable;

.field private mDeletePressed:Landroid/graphics/drawable/Drawable;

.field private mDisabledColor:I

.field private mDisabledPaint:Landroid/graphics/Paint;

.field private mDrawXProgress:F

.field private mDrawableSizeRight:I

.field private mEditFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mEmptyTextPaint:Landroid/graphics/Paint;

.field private mErrorColor:I

.field private mErrorState:Z

.field private mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

.field private mFocusedAlpha:I

.field private mFocusedPaint:Landroid/graphics/Paint;

.field private mFocusedStrokeColor:I

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mForceFinishDetach:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mHintEnabled:Z

.field private mHintExpanded:Z

.field private mInDrawableStateChanged:Z

.field private mInputConnectionListener:Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;

.field private mInputText:Ljava/lang/String;

.field private mIsEllipsis:Z

.field private mIsEllipsisEnabled:Z

.field private mIsProvidingHint:Z

.field private mJustShowFocusLine:Z

.field private mLabelCutoutPadding:I

.field private mLineExpanded:Z

.field private mLineModePaddingMiddle:I

.field private mLineModePaddingTop:I

.field private mLinePadding:I

.field private mNormalPaint:Landroid/graphics/Paint;

.field private mOriginalHint:Ljava/lang/CharSequence;

.field private mPasswordDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

.field private mPathInterpolator1:Landroid/view/animation/Interpolator;

.field private mPathInterpolator2:Landroid/view/animation/Interpolator;

.field private mQuickDelete:Z

.field private mRectModePaddingTop:I

.field private mRefreshStyle:I

.field private mSetDeleteIcon:Ljava/lang/Runnable;

.field private mShouldHandleDelete:Z

.field private mShowDeleteIcon:Z

.field private mStrokeWidth:I

.field private mStrokeWidthFocused:I

.field private mTextDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTmpRectF:Landroid/graphics/RectF;

.field private mTouchHelper:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/edittext/COUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v5, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-direct {v5, p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;-><init>(Landroid/view/View;)V

    iput-object v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShouldHandleDelete:Z

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    .line 7
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    .line 9
    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

    .line 10
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mForceFinishDetach:Z

    .line 11
    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteButton:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    const/4 v1, 0x1

    .line 13
    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidth:I

    const/4 v2, 0x3

    .line 14
    iput v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidthFocused:I

    .line 15
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTmpRectF:Landroid/graphics/RectF;

    .line 16
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsis:Z

    .line 17
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    .line 18
    const-string v2, ""

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputText:Ljava/lang/String;

    .line 19
    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mClickSelectionPosition:I

    .line 20
    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShowDeleteIcon:Z

    .line 21
    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mJustShowFocusLine:Z

    .line 22
    new-instance v2, Lcom/coui/appcompat/edittext/COUIEditText$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/edittext/COUIEditText$1;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCancelDeleteIcon:Ljava/lang/Runnable;

    .line 23
    new-instance v2, Lcom/coui/appcompat/edittext/COUIEditText$2;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/edittext/COUIEditText$2;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mSetDeleteIcon:Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 24
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRefreshStyle:I

    .line 25
    :cond_0
    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRefreshStyle:I

    if-nez v2, :cond_1

    .line 26
    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRefreshStyle:I

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mContext:Landroid/content/Context;

    .line 28
    sget-object v2, Lcom/support/appcompat/R$styleable;->COUIEditText:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 29
    sget v3, Lcom/support/appcompat/R$styleable;->COUIEditText_quickDelete:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 30
    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextErrorColor:I

    sget v6, Lcom/support/appcompat/R$attr;->couiColorErrorTextBg:I

    .line 31
    invoke-static {p1, v6}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v6

    .line 32
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorColor:I

    .line 33
    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconNormal:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    .line 34
    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconPressed:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    .line 35
    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextIsEllipsis:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    .line 36
    sget v4, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextHintLines:I

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 37
    invoke-virtual {v5, v4}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setHintLines(I)V

    .line 38
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 39
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/edittext/COUIEditText;->setFastDeletable(Z)V

    .line 40
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    .line 42
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconHeight:I

    .line 43
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    invoke-virtual {v3, v0, v0, v6, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 45
    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    iget v6, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconHeight:I

    invoke-virtual {v2, v0, v0, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/appcompat/R$dimen;->coui_edit_text_hint_start_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setHintPaddingStart(F)V

    .line 47
    new-instance v0, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    invoke-direct {v0, p0, p0}, Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;Landroid/view/View;)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    .line 48
    invoke-static {p0, v0}, Landroidx/core/view/m0;->j0(Landroid/view/View;Landroidx/core/view/a;)V

    .line 49
    invoke-static {p0, v1}, Landroidx/core/view/m0;->t0(Landroid/view/View;I)V

    .line 50
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mContext:Landroid/content/Context;

    sget v1, Lcom/support/appcompat/R$string;->coui_slide_delete:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteButton:Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/a;->invalidateRoot()V

    .line 52
    new-instance v0, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-direct {v0, p0, v4}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;-><init>(Landroid/widget/EditText;I)V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/edittext/COUIEditText;->initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorColor:I

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidthFocused:I

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->init(III[FLcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/edittext/COUIEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coui/appcompat/edittext/COUIEditText;F)F
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDrawXProgress:F

    return p1
.end method

.method static synthetic access$402(Lcom/coui/appcompat/edittext/COUIEditText;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedAlpha:I

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/edittext/COUIEditText;)Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/edittext/COUIEditText;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->updateDeletableStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/coui/appcompat/edittext/COUIEditText;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteButton:Ljava/lang/String;

    return-object p0
.end method

.method private animateToExpansionFraction(F)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpansionFraction()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIEditText$5;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIEditText$5;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getExpansionFraction()F

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput p1, v2, v1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateToHideBackground()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIEditText$4;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIEditText$4;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    const/16 v1, 0xff

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineExpanded:Z

    return-void
.end method

.method private animateToShowBackground()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/edittext/COUIEditText$3;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/edittext/COUIEditText$3;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedAlpha:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineExpanded:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyBoxAttributes()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->setBoxAttributes()V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidth:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxStrokeColor:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCornerRadiiAsArray()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private applyCutoutPadding(Landroid/graphics/RectF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLabelCutoutPadding:I

    int-to-float v1, p0

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->top:F

    int-to-float v1, p0

    sub-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    int-to-float v1, p0

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private assignBoxBackgroundByMode()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of v0, v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-direct {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    :cond_2
    :goto_0
    return-void
.end method

.method private calculateCollapsedTextTopBounds()I
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getLabelMarginTop()I

    move-result p0

    sub-int v2, v0, p0

    :cond_1
    return v2

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget v2, p0, Landroid/graphics/Rect;->top:I

    :cond_3
    return v2
.end method

.method private closeCutout()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->removeCutout()V

    :cond_0
    return-void
.end method

.method private collapseHint(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintExpanded:Z

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->openCutout()V

    :cond_2
    return-void
.end method

.method private cutoutEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    instance-of p0, p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private expandHint(Z)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBoxBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUIEditText"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintAnimationEnabled:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->animateToExpansionFraction(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpansionFraction(F)V

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p1, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->hasCutout()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->closeCutout()V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintExpanded:Z

    return-void
.end method

.method private getBoundsTop()I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1
    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineModePaddingTop:I

    return p0
.end method

.method private getBoxBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private getContentRect(Landroid/graphics/Rect;)Z
    .locals 4

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isRtlMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    add-int/2addr p0, v2

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p0, 0x1

    return p0
.end method

.method private getCornerRadiiAsArray()[F
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusTopEnd:F

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusTopStart:F

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusBottomStart:F

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusBottomEnd:F

    const/16 v3, 0x8

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    const/4 v0, 0x2

    aput v1, v3, v0

    const/4 v0, 0x3

    aput v1, v3, v0

    const/4 v0, 0x4

    aput v2, v3, v0

    const/4 v0, 0x5

    aput v2, v3, v0

    const/4 v0, 0x6

    aput p0, v3, v0

    const/4 v0, 0x7

    aput p0, v3, v0

    return-object v3
.end method

.method private getModePaddingTop()I
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRectModePaddingTop:I

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    add-int/2addr v0, p0

    return v0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineModePaddingTop:I

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getHintHeight()F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineModePaddingMiddle:I

    goto :goto_0
.end method

.method private initHintMode(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    new-instance v1, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    new-instance v0, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPathInterpolator1:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPathInterpolator2:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/support/appcompat/R$styleable;->COUIEditText:[I

    sget v1, Lcom/support/appcompat/R$style;->Widget_COUI_EditText_HintAnim_Line:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiHintEnabled:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_android_hint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz p3, :cond_0

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiHintAnimationEnabled:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintAnimationEnabled:Z

    :cond_0
    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_rectModePaddingTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRectModePaddingTop:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_cornerRadius:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusTopStart:F

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusTopEnd:F

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusBottomEnd:F

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxCornerRadiusBottomStart:F

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    sget v1, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {p1, v1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidth:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiFocusStrokeWidth:I

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidthFocused:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidthFocused:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLinePadding:I

    iget-boolean p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_textinput_label_cutout_padding:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLabelCutoutPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding_top:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineModePaddingTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/support/appcompat/R$dimen;->coui_textinput_line_padding_middle:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineModePaddingMiddle:I

    :cond_1
    sget p1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiBackgroundMode:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setBoxBackgroundMode(I)V

    iget p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_3

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    :cond_3
    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiDefaultStrokeColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiDisabledStrokeColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextNoEllipsisText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputText:Ljava/lang/String;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p3, Lcom/support/appcompat/R$styleable;->COUIEditText_collapsedTextSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_collapsedTextColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/coui/appcompat/edittext/COUIEditText;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    const/4 p3, 0x2

    if-ne p1, p3, :cond_4

    const-string p1, "sans-serif-medium"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iget-object p3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p3, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    :cond_4
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mEmptyTextPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->setEditText()V

    return-void
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isGravityCenterHorizontal()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result p0

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
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

.method private onApplyBoxBackgroundMode()V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->assignBoxBackgroundByMode()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxBounds()V

    return-void
.end method

.method private openCutout()V
    .locals 2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTmpRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextActualBounds(Landroid/graphics/RectF;)V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->applyCutoutPadding(Landroid/graphics/RectF;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->setCutout(Landroid/graphics/RectF;)V

    return-void
.end method

.method private setBoxAttributes()V
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    :cond_1
    :goto_0
    return-void
.end method

.method private setEditText()V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->onApplyBoxBackgroundMode()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextSize(F)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    and-int/lit8 v2, v0, -0x71

    or-int/lit8 v2, v2, 0x30

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextGravity(I)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextGravity(I)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mOriginalHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsProvidingHint:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLabelState(ZZ)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateModePadding()V

    :cond_4
    return-void
.end method

.method private setEllipsize()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsis:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputText:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsis:Z

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorState:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setErrorState(Z)V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsis:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mClickSelectionPosition:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mClickSelectionPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsis:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private setHintInternal(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->openCutout()V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setHintInternal(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V

    :cond_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method private updateDeletableStatus(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isGravityCenterHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCancelDeleteIcon:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isGravityCenterHorizontal()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isFastDeletable()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShowDeleteIcon:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mSetDeleteIcon:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isGravityCenterHorizontal()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_6
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCancelDeleteIcon:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private updateLabelState(ZZ)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    .line 6
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v2, :cond_0

    .line 7
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    .line 9
    :cond_0
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 10
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    .line 11
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 13
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v2, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_5

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 15
    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintExpanded:Z

    if-nez p2, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isHintEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 16
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->expandHint(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    if-nez p2, :cond_6

    .line 17
    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintExpanded:Z

    if-eqz p2, :cond_7

    .line 18
    :cond_6
    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->collapseHint(Z)V

    .line 19
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz p0, :cond_8

    .line 20
    invoke-virtual {p1, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->updateLabelState(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V

    :cond_8
    return-void
.end method

.method private updateLineModeBackground()V
    .locals 2

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineExpanded:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->animateToShowBackground()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mLineExpanded:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->animateToHideBackground()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDrawXProgress:F

    :cond_3
    :goto_0
    return-void
.end method

.method private updateModePadding()V
    .locals 4

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getModePaddingTop()I

    move-result v0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isRtlMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isRtlMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-static {p0, v1, v0, v2, v3}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    return-void
.end method

.method private updateTextInputBoxBounds()V
    .locals 5

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoundsTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->applyBoxAttributes()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTextInputBoxState()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxStrokeColor:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxStrokeColor:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxStrokeColor:I

    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->applyBoxAttributes()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->addOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V

    return-void
.end method

.method public cutoutIsOpen()Z
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->cutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    check-cast p0, Lcom/coui/appcompat/edittext/COUICutoutDrawable;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable;->hasCutout()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public destroyAnimators()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator1:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mAnimator2:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->isDeleteButtonExist()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTouchHelper:Lcom/coui/appcompat/edittext/COUIEditText$AccessibilityTouchHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/a;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchStartTemporaryDetach()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mForceFinishDetach:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->setEllipsize()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLabelState(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, " "

    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mEmptyTextPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    if-ne v2, v1, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxBounds()V

    :cond_4
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxStrokeColor:I

    invoke-virtual {v1, p1, v2, v3}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->drawModeBackgroundRect(Landroid/graphics/Canvas;Landroid/graphics/drawable/GradientDrawable;I)V

    :cond_6
    :goto_2
    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mJustShowFocusLine:Z

    if-nez v1, :cond_a

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidth:I

    sub-int v1, v5, v1

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v9, v1

    int-to-float v10, v5

    iget-object v11, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {v1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isErrorState()Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mJustShowFocusLine:Z

    if-nez v1, :cond_8

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidth:I

    sub-int v1, v5, v1

    int-to-float v8, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v9, v1

    int-to-float v10, v5

    iget-object v11, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mStrokeWidthFocused:I

    sub-int v1, v5, v1

    int-to-float v8, v1

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float v9, v1, v2

    int-to-float v10, v5

    iget-object v11, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDrawXProgress:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    iget-object v8, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->drawModeBackgroundLine(Landroid/graphics/Canvas;IIILandroid/graphics/Paint;Landroid/graphics/Paint;)V

    :cond_a
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInDrawableStateChanged:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInDrawableStateChanged:Z

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    iget-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-static {p0}, Landroidx/core/view/m0;->O(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLabelState(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLabelState(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLineModeBackground()V

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxBounds()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxState()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setState([I)Z

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->drawableStateChanged([I)V

    goto :goto_2

    :cond_3
    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    iput-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInDrawableStateChanged:Z

    return-void
.end method

.method public forceFinishDetach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mForceFinishDetach:Z

    return-void
.end method

.method public getBackgroundRect()Landroid/graphics/Rect;
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getBoxBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    :cond_1
    :goto_0
    return-object v2
.end method

.method public getBoxStrokeColor()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    return p0
.end method

.method public getCouiEditTexttNoEllipsisText()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsis:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputText:Ljava/lang/String;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeleteButtonLeft()I
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method public getDeleteIconWidth()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    return p0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLabelMarginTop()I
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextHeight()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method getTextDeleteListener()Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    return-object p0
.end method

.method public isDeleteButtonExist()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEllipsisEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    return p0
.end method

.method public isErrorState()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->isErrorState()Z

    move-result p0

    return p0
.end method

.method public isFastDeletable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    return p0
.end method

.method public isHintEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    return p0
.end method

.method public isProvidingHint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsProvidingHint:Z

    return p0
.end method

.method public isShowDeleteIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShowDeleteIcon:Z

    return p0
.end method

.method public ismHintAnimationEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintAnimationEnabled:Z

    return p0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputConnectionListener:Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;->onCreateInputConnection()V

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputConnectionListener:Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputConnectionListener:Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFastDelete()V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->updateDeletableStatus(Z)V

    :cond_0
    iget-object p2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mEditFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    if-eqz p2, :cond_1

    invoke-interface {p2, p0, p1}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;->onPasswordDeleted()Z

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackground:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxBounds()V

    :cond_0
    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateModePadding()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->calculateCollapsedTextTopBounds()I

    move-result p3

    iget-object p4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result p5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p4, p1, p5, p2, v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setExpandedBounds(IIII)V

    iget-object p4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    sub-int/2addr p5, v0

    invoke-virtual {p4, p1, p3, p2, p5}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedBounds(IIII)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->recalculate()V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->cutoutEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintExpanded:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->openCutout()V

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->onLayout(Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;

    iget-object v0, v0, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;->mText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getCouiEditTexttNoEllipsisText()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/coui/appcompat/edittext/COUIEditText$COUISavedState;->mText:Ljava/lang/String;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShowDeleteIcon:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->getContentRect(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShouldHandleDelete:Z

    if-eqz v0, :cond_5

    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShouldHandleDelete:Z

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;->onTextDeleted()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->onFastDelete()V

    iput-boolean v2, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShouldHandleDelete:Z

    return v3

    :cond_4
    iput-boolean v3, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShouldHandleDelete:Z

    return v3

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCustomEditTextTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_6

    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    :cond_6
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mClickSelectionPosition:I

    return p1
.end method

.method public refresh()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRefreshStyle:I

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

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIEditText:[I

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRefreshStyle:I

    invoke-virtual {v0, v2, v1, v4, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/support/appcompat/R$styleable;->COUIEditText:[I

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mRefreshStyle:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_android_textColorHint:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultHintTextColor:Landroid/content/res/ColorStateList;

    :cond_1
    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextErrorColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiColorErrorTextBg:I

    invoke-static {v4, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorColor:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiStrokeColor:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/support/appcompat/R$attr;->couiColorPrimary:I

    invoke-static {v4, v5, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiDefaultStrokeColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiDisabledStrokeColor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorColor:I

    invoke-virtual {v1, v4}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconNormal:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/support/appcompat/R$styleable;->COUIEditText_couiEditTextDeleteIconPressed:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconHeight:I

    iget-object v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    invoke-virtual {v4, v3, v3, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget v4, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    iget v5, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconHeight:I

    invoke-virtual {v1, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShowDeleteIcon:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletable:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {p0, v2, v2, v1, v2}, Lcom/coui/appcompat/edittext/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxState()V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_5
    return-void
.end method

.method public removeOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->removeOnErrorStateChangedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnErrorStateChangedListener;)V

    return-void
.end method

.method public setBoxBackgroundMode(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mBoxBackgroundMode:I

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->onApplyBoxBackgroundMode()V

    return-void
.end method

.method public setBoxStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedStrokeColor:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUICollapseTextHelper:Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/edittext/COUICutoutDrawable$COUICollapseTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLabelState(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setCollapsedTextAppearance(ILandroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDrawableSizeRight:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDrawableSizeRight:I

    :goto_0
    return-void
.end method

.method public setCouiEditTexttNoEllipsisText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputText:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCustomEditTextOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCustomEditTextTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setDefaultStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDefaultStrokeColor:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mNormalPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setDisabledStrokeColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledColor:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDisabledPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateTextInputBoxState()V

    :cond_0
    return-void
.end method

.method public setEditFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mEditFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setEditTextColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setOriginalTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setEditTextDeleteIconNormal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconHeight:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteNormal:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEditTextDeleteIconPressed(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeletePressed:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconWidth:I

    iget v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mDeleteIconHeight:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setEditTextErrorColor(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorColor:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorColor:I

    iget-object v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setErrorState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorState:Z

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mErrorStateHelper:Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIErrorEditTextHelper;->setErrorState(Z)V

    return-void
.end method

.method public setFastDeletable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mQuickDelete:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    if-nez p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;-><init>(Lcom/coui/appcompat/edittext/COUIEditText;Lcom/coui/appcompat/edittext/COUIEditText$1;)V

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mCOUITextWatcher:Lcom/coui/appcompat/edittext/COUIEditText$COUITextWatcher;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public setHintEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    if-eq p1, v0, :cond_4

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintEnabled:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsProvidingHint:Z

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHint:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setTopHint(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsProvidingHint:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public setInputConnectionListener(Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mInputConnectionListener:Lcom/coui/appcompat/edittext/COUIEditText$InputConnectionListener;

    return-void
.end method

.method public setIsEllipsisEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mIsEllipsisEnabled:Z

    return-void
.end method

.method public setJustShowFocusLine(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mJustShowFocusLine:Z

    return-void
.end method

.method public setOnTextDeletedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mTextDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnTextDeletedListener;

    return-void
.end method

.method public setShowDeleteIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mShowDeleteIcon:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->length()I

    move-result p0

    invoke-static {p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setTextDeletedListener(Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mPasswordDeleteListener:Lcom/coui/appcompat/edittext/COUIEditText$OnPasswordDeletedListener;

    return-void
.end method

.method public setTopHint(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/edittext/COUIEditText;->setHintInternal(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setmHintAnimationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/edittext/COUIEditText;->mHintAnimationEnabled:Z

    return-void
.end method

.method public updateLabelState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->updateLabelState(ZZ)V

    return-void
.end method
