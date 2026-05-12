.class public Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
.super Landroidx/appcompat/app/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;
    }
.end annotation


# static fields
.field private static final DEF_STYLE_ATTR:I

.field private static final DEF_STYLE_RES:I

.field private static final DEF_WINDOW_ANIM:I

.field private static final DEF_WINDOW_GRAVITY:I = 0x11

.field private static final TAG:Ljava/lang/String; = "COUIAlertDialogBuilder"

.field private static final UNSET_WIDTH:I = -0x1


# instance fields
.field private hasAdapter:Z

.field private hasMessage:Z

.field private hasSetButton:Z

.field private hasSetView:Z

.field private hasTitle:Z

.field private isAssignMentLayout:Z

.field private mAlwaysFollowHand:Z

.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewTouchPoint:Landroid/graphics/Point;

.field private mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

.field private mButtonLayoutDynamicLayout:Z

.field private mCOUIListDialogAdapter:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

.field private mChoiceListAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mContentMaxHeight:I

.field private mContentMaxWidth:I

.field private mContentView:Landroid/view/View;

.field private mCustomContentLayoutRes:I

.field private mCustomDrawable:Landroid/graphics/drawable/Drawable;

.field private mCustomMessage:Ljava/lang/CharSequence;

.field private mCustomTitle:Ljava/lang/String;

.field private mDialog:Landroidx/appcompat/app/c;

.field private mDialogStyle:I

.field private mDialogWindowType:I

.field private mExtraOffsetPoint:Landroid/graphics/Point;

.field private mForcePhysicalDimensions:Z

.field private mGravity:I

.field private mHasLoading:Z

.field private mHasMessageMerge:Z

.field private mIsCustomStyle:Z

.field private mIsForceCenterInLargeScreen:Z

.field private mIsForceCenterStyleStatus:Z

.field private mIsNeedToAdaptMessageAndList:Z

.field private mIsTinyStyle:Z

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mItems:[Ljava/lang/CharSequence;

.field private mOldConfigurationHeightDP:I

.field private mOldConfigurationWidthDP:I

.field private mOriginWidth:I

.field private mRecommendButtonId:I

.field private mRegisterConfigurationChangeCallBack:Z

.field private mSummaryItems:[Ljava/lang/CharSequence;

.field private mSupportDynamicMarginTop:Z

.field public mTextColor:[I

.field private mWindowAnimStyleRes:I

.field private parentPanelMinHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/appcompat/R$attr;->alertDialogStyle:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v0, Lcom/support/dialog/R$style;->AlertDialogBuildStyle:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_STYLE_RES:I

    sget v0, Lcom/support/dialog/R$style;->Animation_COUI_Dialog_Alpha:I

    sput v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_WINDOW_ANIM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget v0, Lcom/support/dialog/R$style;->COUIAlertDialog_BottomWarning:I

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    .line 4
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    .line 5
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    .line 6
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    .line 7
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCOUIListDialogAdapter:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    .line 9
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    .line 10
    iput v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialogWindowType:I

    .line 11
    iput-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mChoiceListAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    .line 12
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetButton:Z

    .line 13
    iput-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    .line 14
    iput-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    .line 15
    iput-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mExtraOffsetPoint:Landroid/graphics/Point;

    const/4 v1, -0x1

    .line 16
    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    const/4 v2, 0x1

    .line 17
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mButtonLayoutDynamicLayout:Z

    .line 18
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    .line 19
    iput-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRegisterConfigurationChangeCallBack:Z

    .line 20
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterInLargeScreen:Z

    .line 21
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mForcePhysicalDimensions:Z

    .line 22
    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    .line 23
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsCustomStyle:Z

    .line 24
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasMessageMerge:Z

    .line 25
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSupportDynamicMarginTop:Z

    .line 26
    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 27
    iput p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialogStyle:I

    .line 28
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initAttrs()V

    .line 29
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initBlurBuilder(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 30
    invoke-static {p1, p2, p3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->wrapColorContext(Landroid/content/Context;II)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    .line 32
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    .line 33
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    .line 34
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    .line 35
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    const/4 p3, 0x0

    .line 36
    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCOUIListDialogAdapter:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    .line 37
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    .line 38
    iput p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialogWindowType:I

    .line 39
    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mChoiceListAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    .line 40
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetButton:Z

    .line 41
    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    .line 42
    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    .line 43
    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mExtraOffsetPoint:Landroid/graphics/Point;

    const/4 p3, -0x1

    .line 44
    iput p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mButtonLayoutDynamicLayout:Z

    .line 46
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    .line 47
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRegisterConfigurationChangeCallBack:Z

    .line 48
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterInLargeScreen:Z

    .line 49
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mForcePhysicalDimensions:Z

    .line 50
    iput p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    .line 51
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsCustomStyle:Z

    .line 52
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasMessageMerge:Z

    .line 53
    iput-boolean p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSupportDynamicMarginTop:Z

    .line 54
    new-instance p2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;

    invoke-direct {p2, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$4;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V

    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 55
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initAttrs()V

    .line 56
    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initBlurBuilder(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->registerApplicationConfigChangeListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->operateBlur(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->releaseApplicationConfigChangeListener()V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRegisterConfigurationChangeCallBack:Z

    return p0
.end method

.method static synthetic access$502(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mConfiguration:Landroid/content/res/Configuration;

    return-object p1
.end method

.method private disabledTitleScroll(Landroidx/appcompat/app/c;)V
    .locals 1

    sget v0, Lcom/support/dialog/R$id;->alert_title_scroll_view:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;

    invoke-direct {v0, p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$3;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_0
    const-string p0, "COUIAlertDialogBuilder"

    const-string p1, "alert_title_scroll_view is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initAttrs()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder:[I

    sget v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_STYLE_ATTR:I

    sget v3, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_STYLE_RES:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_android_gravity:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mGravity:I

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_windowAnimStyle:I

    sget v2, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_WINDOW_ANIM:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mWindowAnimStyleRes:I

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_contentMaxWidth:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxWidth:I

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_contentMaxHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxHeight:I

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_customContentLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomContentLayoutRes:I

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_isNeedToAdaptMessageAndList:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsNeedToAdaptMessageAndList:Z

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_isTinyDialog:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_hasLoading:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_isAssignMentLayout:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_isForceCenterStyleInLargeScreen:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterInLargeScreen:Z

    sget v1, Lcom/support/dialog/R$styleable;->COUIAlertDialogBuilder_isCustomStyle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsCustomStyle:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initBlurBuilder(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-direct {v0, p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$color;->coui_dialog_list_mix_blur_light:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setMixColorLight([F)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_dialog_list_mix_blur_dark:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setMixColorDark([F)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$color;->coui_dialog_list_blend_blur_light:I

    invoke-static {v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setBlendColorLight([F)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$color;->coui_dialog_list_blend_blur_dark:I

    invoke-static {p0, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setBlendColorDark([F)V

    return-void
.end method

.method private initBlurListener()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$1;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private initCOUIDialogTitle(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initContentMaxHeight(Landroid/view/Window;)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxHeight:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxHeight:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxHeight:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->setMaxHeight(I)V

    goto :goto_0

    :cond_2
    const-string p0, "COUIAlertDialogBuilder"

    const-string p1, "parentPanel is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initContentMaxWidth(Landroid/view/Window;)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxWidth:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxWidth:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentMaxWidth:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxScrollView;->setMaxWidth(I)V

    goto :goto_0

    :cond_2
    const-string p0, "COUIAlertDialogBuilder"

    const-string p1, "parentPanel is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initCustomPanel()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomContentLayoutRes:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(I)Landroidx/appcompat/app/c$a;

    :cond_1
    :goto_0
    return-void
.end method

.method private initCustomPanelVisibility(Landroid/view/Window;)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/support/dialog/R$id;->customPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget v0, Lcom/support/dialog/R$id;->custom:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_customstyle_padding_top_withouttitle:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/dialog/R$dimen;->coui_alert_dialog_customer_layout_imageview_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/dialog/R$dimen;->coui_alert_dialog_customer_layout_imageview_margin_bottom:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p1, p0, v0, v2, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_5
    return-void
.end method

.method private initListPanel(Landroid/view/Window;)V
    .locals 8

    sget v0, Lcom/support/dialog/R$id;->listPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    const-string v2, "COUIAlertDialogBuilder"

    if-eqz v1, :cond_a

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/c;->g()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setScrollIndicators(I)V

    :cond_1
    const/4 v4, 0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v7, -0x1

    invoke-direct {v6, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sget v1, Lcom/support/dialog/R$id;->scrollView:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Landroid/view/View;->setScrollIndicators(I)V

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsNeedToAdaptMessageAndList:Z

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    invoke-direct {p0, v1, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setViewHorizontalWeight(Landroid/view/View;I)V

    invoke-direct {p0, v0, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setViewHorizontalWeight(Landroid/view/View;I)V

    :cond_5
    instance-of v0, v1, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/dialog/AppFeatureUtil;->isSecondaryScreen(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_6

    move-object v0, v1

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_content_max_height_with_adapter:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V

    :cond_6
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x50

    if-ne p1, v0, :cond_8

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    if-nez p1, :cond_7

    iget-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move-object p1, v1

    check-cast p1, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;

    invoke-direct {v0, p0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$2;-><init>(Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;Landroid/view/ViewGroup;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setConfigChangeListener(Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView$ConfigChangeListener;)V

    goto :goto_3

    :cond_8
    :goto_2
    return-void

    :cond_9
    const-string p0, "scrollView isn\'t instanceof COUIMaxHeightNestedScrollView; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v2, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    const-string p0, "listPanel is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v2, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private initMessagePadding()V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/support/dialog/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-nez v2, :cond_1

    const-string p0, "COUIAlertDialogBuilder"

    const-string v0, "parentPanel is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {p0, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast v1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setHasLoading(Z)V

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setIsTiny(Z)V

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSupportDynamicMarginTop:Z

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setSupportDynamicMarginTop(Z)V

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_alert_dialog_scroll_padding_bottom_message_has_title_in_assignment:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasMessageMerge:Z

    invoke-virtual {v1, v0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setHasMessageMerge(Z)V

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isAssignMentLayout:Z

    if-nez p0, :cond_3

    sget p0, Lcom/support/dialog/R$id;->scrollView:I

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedSetPaddingLayoutId(I)V

    :cond_3
    return-void
.end method

.method private initSingleContentPadding(Landroid/view/Window;)V
    .locals 4

    sget v0, Lcom/support/dialog/R$id;->buttonPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v2

    :goto_2
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    if-eqz v3, :cond_4

    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/dialog/R$dimen;->coui_tiny_dialog_btn_bar_padding_vertical:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    return-void

    :cond_4
    instance-of v0, p1, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setRecommendButtonId(I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mButtonLayoutDynamicLayout:Z

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setDynamicLayout(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p1, v1}, Lcom/coui/appcompat/buttonBar/COUIButtonBarLayout;->setShowDividerWhenHasItems(Z)V

    goto :goto_3

    :cond_6
    const-string p0, "COUIAlertDialogBuilder"

    const-string p1, "buttonPanel is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private initTitle(Landroid/view/Window;)V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    if-nez v0, :cond_2

    sget v0, Lcom/support/dialog/R$id;->title_template:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_no_message_alert_dialog_title_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_no_message_alert_dialog_title_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lcom/support/dialog/R$id;->alert_title_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initTitleScrollView(Landroid/view/Window;Landroid/view/View;)V

    sget v0, Lcom/support/dialog/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initCOUIDialogTitle(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "COUIAlertDialogBuilder"

    const-string p1, "title_template is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {p0, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initTitleScrollView(Landroid/view/Window;Landroid/view/View;)V
    .locals 4

    const-string v0, "COUIAlertDialogBuilder"

    if-eqz p2, :cond_3

    instance-of v1, p2, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_title_scroll_min_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_no_message_alert_dialog_title_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$dimen;->coui_no_message_alert_dialog_title_margin_bottom:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    check-cast p2, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMinHeight(I)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/coui/appcompat/scrollview/COUIScrollView;->setFillViewport(Z)V

    sget v1, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-nez v2, :cond_1

    const-string p0, "parentPanelView is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    check-cast v1, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_parent_panel_min_height_normal:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedMinHeight(I)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setNeedReMeasureLayoutId(I)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "alert_title_scroll_view is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v0, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initWindow(Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isFollowHandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mExtraOffsetPoint:Landroid/graphics/Point;

    invoke-static {p1, v0, v1, v2}, Lcom/coui/appcompat/dialog/COUIBottomAlertDialogAdjustUtil;->adjustToFree(Landroid/view/Window;Landroid/view/View;Landroid/graphics/Point;Landroid/graphics/Point;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateGravityAndAnimation(Landroid/content/res/Configuration;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-direct {v1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder$OutsideTouchListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialogWindowType:I

    if-lez v1, :cond_2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isFollowHandMode()Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, -0x2

    goto :goto_2

    :cond_3
    const/4 p0, -0x1

    :goto_2
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private isFollowHandMode()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    if-eqz p0, :cond_0

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

.method private isForceCenterStyleInLargeScreen(Landroid/content/res/Configuration;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterInLargeScreen:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLargeScreen(Landroid/content/res/Configuration;)Z
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget-boolean v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mForcePhysicalDimensions:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenWidthRealSize(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightRealSize(Landroid/content/Context;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/coui/appcompat/uiutil/UIUtil;->px2dip(Landroid/content/Context;I)I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargePadWindow(Landroid/content/Context;II)Z

    move-result p0

    return p0
.end method

.method private isMiddleAndLargeScreen(Landroid/content/res/Configuration;)Z
    .locals 1

    iget-boolean p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAlwaysFollowHand:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    iget p0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {p0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreenDp(I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method private operateBlur(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const-string v1, "COUIAlertDialogBuilder"

    if-nez v0, :cond_0

    const-string p0, "Hardware accelerate is disabled! Set background blur failed."

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isSupportRoundCornerWhenBlur()Z

    move-result v0

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    sget v3, Lcom/support/dialog/R$id;->rootView:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    sget v4, Lcom/support/dialog/R$id;->parentPanel:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v4, v2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setTargetView(Landroid/view/View;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setRootView(Landroid/view/View;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    instance-of p1, v3, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    if-eqz p1, :cond_1

    check-cast v3, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result p1

    invoke-virtual {v3, p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setBlurBackgroundWindow(Z)V

    invoke-virtual {v3, v0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogMaxLinearLayout;->setIsSupportRoundCornerWhenBlur(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "operateBlur: parentPanel is not COUIAlertDialogMaxLinearLayout"

    invoke-static {v1, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget p1, Lcom/support/appcompat/R$attr;->couiRoundCornerXXLWeight:I

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    if-eqz v0, :cond_2

    sget p1, Lcom/support/appcompat/R$attr;->couiRoundCornerMWeight:I

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setSmoothWeight(F)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    sget p1, Lcom/support/appcompat/R$attr;->couiRoundCornerXXLRadius:I

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasLoading:Z

    if-eqz v0, :cond_3

    sget p1, Lcom/support/appcompat/R$attr;->couiRoundCornerMRadius:I

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsTinyStyle:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1, v1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setCornerRadius(FFFF)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setCornerRadius(F)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->applyBlurBackground()V

    :cond_5
    return-void
.end method

.method private registerApplicationConfigChangeListener()V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method private releaseApplicationConfigChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_0
    return-void
.end method

.method private setCustomLayout()V
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsCustomStyle:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "COUIAlertDialogBuilder"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    sget v3, Lcom/support/dialog/R$id;->customImageview:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/coui/appcompat/imageview/COUIRoundImageView;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/imageview/COUIRoundImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const-string v0, "customImageview is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    sget v3, Lcom/support/dialog/R$id;->customTitle:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_2

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomTitle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const-string v0, "customTitle is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    sget v3, Lcom/support/dialog/R$id;->customMessage:I

    invoke-virtual {v0, v3}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_4
    const-string p0, "customMessage is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private setViewHorizontalWeight(Landroid/view/View;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    int-to-float p2, p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateGravityAndAnimation(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isForceCenterStyleInLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterStyleStatus:Z

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget p1, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->DEF_WINDOW_ANIM:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterStyleStatus:Z

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mWindowAnimStyleRes:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    :goto_0
    return-void
.end method

.method public static wrapColorContext(Landroid/content/Context;II)Landroid/content/Context;
    .locals 1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p0, Landroid/view/ContextThemeWrapper;

    invoke-direct {p0, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object p0
.end method


# virtual methods
.method public create()Landroidx/appcompat/app/c;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initCustomPanel()V

    .line 2
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initAdapter()V

    .line 3
    invoke-super {p0}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initWindow(Landroid/view/Window;)V

    .line 5
    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    return-object p0
.end method

.method public create(Landroid/view/View;)Landroidx/appcompat/app/c;
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isMiddleAndLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public create(Landroid/view/View;II)Landroidx/appcompat/app/c;
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->createWithExtraOffset(Landroid/view/View;IIII)Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public create(Landroid/view/View;Landroid/graphics/Point;)Landroidx/appcompat/app/c;
    .locals 1

    .line 9
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create(Landroid/view/View;II)Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public createWithExtraOffset(Landroid/view/View;II)Landroidx/appcompat/app/c;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->createWithExtraOffset(Landroid/view/View;IIII)Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public createWithExtraOffset(Landroid/view/View;IIII)Landroidx/appcompat/app/c;
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isMiddleAndLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 4
    :cond_0
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    .line 5
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Point;->set(II)V

    :cond_1
    if-nez p4, :cond_2

    if-eqz p5, :cond_3

    .line 6
    :cond_2
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mExtraOffsetPoint:Landroid/graphics/Point;

    .line 7
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Point;->set(II)V

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->create()Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public enforceChangeScreenWidth(I)V
    .locals 4

    const-string v0, "COUIAlertDialogBuilder"

    if-gez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enforceChangeScreenWidth : given value not satisfy : preferWidth ="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v3, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    iput p1, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceChangeScreenWidth : OriginWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ,PreferWidth:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public getBottomAlertDialogWindowAnimStyle(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isMiddleAndLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isFollowHandMode()Z

    move-result p1

    if-eqz p1, :cond_0

    sget p0, Lcom/support/dialog/R$style;->Animation_COUI_DialogListWindow:I

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mWindowAnimStyleRes:I

    return p0
.end method

.method public getBottomAlertDialogWindowGravity(Landroid/content/Context;)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isMiddleAndLargeScreen(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isFollowHandMode()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p0, 0x33

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mGravity:I

    return p0
.end method

.method protected initAdapter()V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCOUIListDialogAdapter:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->setIsTop(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCOUIListDialogAdapter:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetButton:Z

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;->setIsBottom(Z)V

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mChoiceListAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    if-eqz v0, :cond_5

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->setIsTop(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mChoiceListAdapter:Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetButton:Z

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-virtual {v0, v3}, Lcom/coui/appcompat/dialog/adapter/ChoiceListAdapter;->setIsBottom(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    new-instance v0, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-nez v3, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    move v5, v1

    :goto_4
    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetButton:Z

    if-nez v3, :cond_8

    move v6, v2

    goto :goto_5

    :cond_8
    move v6, v1

    :goto_5
    iget-object v7, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    iget-object v8, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSummaryItems:[Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mTextColor:[I

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/coui/appcompat/dialog/adapter/SummaryAdapter;-><init>(Landroid/content/Context;ZZ[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    iget-object v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    :cond_9
    return-void
.end method

.method public restoreScreenWidth()V
    .locals 5

    const-string v0, "COUIAlertDialogBuilder"

    iget v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    iput v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreScreenWidth : OriginWidth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOriginWidth:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "restoreScreenWidth : failed to updateConfiguration"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    .line 3
    instance-of v0, p1, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    if-eqz v0, :cond_1

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCOUIListDialogAdapter:Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setAlwaysFollowHand(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAlwaysFollowHand:Z

    return-object p0
.end method

.method public setAnchorView(Landroid/view/View;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method public setAnchorViewTouchPoint(Landroid/graphics/Point;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public setBlurBackgroundDrawable(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 1
    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setBlurBackgroundDrawable(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    return-object p0
.end method

.method public setBlurBackgroundDrawable(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    return-object p0
.end method

.method public setButtonLayoutDynamicLayout(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mButtonLayoutDynamicLayout:Z

    return-object p0
.end method

.method public setCustomDrawable(Landroid/graphics/drawable/Drawable;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setCustomMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomTitle(Ljava/lang/String;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mCustomTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setExtraOffsetPoint(Landroid/graphics/Point;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mExtraOffsetPoint:Landroid/graphics/Point;

    return-object p0
.end method

.method public setForcePhysicalDimensions(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mForcePhysicalDimensions:Z

    return-object p0
.end method

.method public setHasMessageMerge(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mHasMessageMerge:Z

    return-object p0
.end method

.method public setHasSetButton(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetButton:Z

    return-void
.end method

.method public setIsForceCenterInLargeScreen(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterInLargeScreen:Z

    return-object p0
.end method

.method public bridge synthetic setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;[I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    .line 7
    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 8
    iput-object p3, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mTextColor:[I

    .line 9
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItems:[Ljava/lang/CharSequence;

    .line 11
    iput-object p2, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 12
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public bridge synthetic setMessage(I)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setMessage(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setMessage(I)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setNeedToAdaptMessageAndList(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsNeedToAdaptMessageAndList:Z

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    if-eqz p3, :cond_0

    const p1, 0x102001a

    .line 9
    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    :cond_0
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    if-eqz p3, :cond_0

    const p1, 0x102001a

    .line 12
    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    if-eqz p3, :cond_0

    const p1, 0x102001b

    .line 9
    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    :cond_0
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    if-eqz p3, :cond_0

    const p1, 0x102001b

    .line 12
    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    :cond_0
    return-object p0
.end method

.method public bridge synthetic setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    if-eqz p3, :cond_0

    const p1, 0x1020019

    .line 9
    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    :cond_0
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setHasSetButton(Z)V

    if-eqz p3, :cond_0

    const p1, 0x1020019

    .line 12
    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRecommendButtonId:I

    :cond_0
    return-object p0
.end method

.method public setRegisterConfigurationChangeCallBack(Z)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mRegisterConfigurationChangeCallBack:Z

    return-object p0
.end method

.method public bridge synthetic setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasAdapter:Z

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/c$a;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setSummaryItems(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSummaryItems:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummaryItems([Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSummaryItems:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSupportDynamicMarginTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mSupportDynamicMarginTop:Z

    return-void
.end method

.method public bridge synthetic setTitle(I)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    .line 6
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setTitle(I)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    .line 4
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    return-object p0
.end method

.method public setView(I)Landroidx/appcompat/app/c$a;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    .line 2
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setView(I)Landroidx/appcompat/app/c$a;

    move-result-object p0

    return-object p0
.end method

.method public setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;
    .locals 1

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasSetView:Z

    .line 4
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentView:Landroid/view/View;

    .line 5
    invoke-super {p0, p1}, Landroidx/appcompat/app/c$a;->setView(Landroid/view/View;)Landroidx/appcompat/app/c$a;

    move-result-object p0

    return-object p0
.end method

.method public setWindowAnimStyle(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mWindowAnimStyleRes:I

    return-object p0
.end method

.method public setWindowGravity(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mGravity:I

    return-object p0
.end method

.method public setWindowType(I)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialogWindowType:I

    return-object p0
.end method

.method public show()Landroidx/appcompat/app/c;
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/c$a;->show()Landroidx/appcompat/app/c;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->disabledTitleScroll(Landroidx/appcompat/app/c;)V

    .line 3
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateViewAfterShown()V

    return-object v0
.end method

.method public show(Landroid/view/View;)Landroidx/appcompat/app/c;
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isMiddleAndLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    .line 6
    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    move-result-object p0

    return-object p0
.end method

.method public updateGravityWhileConfigChange(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-eqz v0, :cond_9

    iget v1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOldConfigurationWidthDP:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    const-string v3, "COUIAlertDialogBuilder"

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v2, v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOldConfigurationHeightDP:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v1, v0, :cond_5

    :cond_1
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasTitle:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    sget v1, Lcom/support/dialog/R$id;->alert_title_scroll_view:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_title_scroll_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/statement/COUIMaxHeightScrollView;->setMaxHeight(I)V

    goto :goto_0

    :cond_2
    const-string v0, "alert_title_scroll_view is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v3, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->hasMessage:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    sget v1, Lcom/support/dialog/R$id;->scrollView:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;

    invoke-virtual {p0}, Landroidx/appcompat/app/c$a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/dialog/R$dimen;->coui_alert_dialog_builder_content_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/dialog/widget/COUIMaxHeightNestedScrollView;->setMaxHeight(I)V

    goto :goto_1

    :cond_4
    const-string v0, "scrollView is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v3, v0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOldConfigurationWidthDP:I

    iget v0, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mOldConfigurationHeightDP:I

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isFollowHandMode()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mIsForceCenterStyleStatus:Z

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isForceCenterStyleInLargeScreen(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->updateGravityAndAnimation(Landroid/content/res/Configuration;)V

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->isFollowHandMode()Z

    move-result p1

    if-eqz p1, :cond_9

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorViewTouchPoint:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mAnchorView:Landroid/view/View;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    sget v0, Lcom/support/dialog/R$id;->custom:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    :cond_7
    const-string p1, "custom is error; Need to check whether the application has a layout that covers the coui\'s"

    invoke-static {v3, p1}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {p1}, Landroidx/appcompat/app/o;->dismiss()V

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->show()Landroidx/appcompat/app/c;

    :cond_9
    :goto_3
    return-void
.end method

.method public updateViewAfterShown()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initTitle(Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initMessagePadding()V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initCustomPanelVisibility(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initListPanel(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initContentMaxWidth(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initContentMaxHeight(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->mDialog:Landroidx/appcompat/app/c;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initSingleContentPadding(Landroid/view/Window;)V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setCustomLayout()V

    invoke-direct {p0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->initBlurListener()V

    return-void
.end method
