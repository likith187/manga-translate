.class public Lcom/coui/appcompat/preference/COUIPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;
    }
.end annotation


# static fields
.field public static final MARGIN_TYPE_LARGE:I = 0x0

.field public static final MARGIN_TYPE_SMALL:I = 0x1

.field public static final MARGIN_TYPE_ZERO:I = 0x2

.field private static final TAG:Ljava/lang/String; = "COUIPreferenceCategory"

.field private static final TITLE_LARGE_TEXTSIZE:F = 16.0f

.field public static final TITLE_MARGIN_START_TYPE_LARGE:I = 0x1

.field public static final TITLE_MARGIN_START_TYPE_SMALL:I = 0x0

.field private static final TITLE_MEDIUM_TEXTSIZE:F = 14.0f

.field private static final TITLE_SMALL_TEXTSIZE:F = 12.0f

.field public static final TITLE_TYPE_LARGE:I = 0x2

.field public static final TITLE_TYPE_MEDIUM:I = 0x1

.field public static final TITLE_TYPE_SMALL:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGetWidgetLayoutListener:Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;

.field private mHorizontalMarginType:I

.field private mIconInRight:I

.field private mIconWithTitle:I

.field private mItemviewClickListener:Landroid/view/View$OnClickListener;

.field private mLayoutTitleMarginEndLarge:I

.field private mLayoutTitleMarginStartLarge:I

.field private mLayoutTitleMarginStartSmall:I

.field private mMarginEndMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMarginTopType:I

.field private mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

.field private mRightIconContentDescription:Ljava/lang/String;

.field private mTextInReddot:Ljava/lang/String;

.field private mTextInRight:Ljava/lang/String;

.field private mTitleIconClickListener:Landroid/view/View$OnClickListener;

.field private mTitleIconContentDescription:Ljava/lang/String;

.field private mTitleOnly:Z

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleType:I

.field private mWidgetLayout:Landroid/view/View;

.field private mWidgetLayoutClickListener:Landroid/view/View$OnClickListener;

.field private mWidgetLayoutRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    iput v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginTopType:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleOnly:Z

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/support/preference/R$styleable;->COUIPreferenceCategory:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_text_in_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_icon_in_right:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconInRight:I

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_icon_with_title:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconWithTitle:I

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_text_in_reddot:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInReddot:Ljava/lang/String;

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_title_margin_start_type:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_title_type:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_top_margin_type:I

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginTopType:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginTopType:I

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_icon_with_title_content_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleIconContentDescription:Ljava/lang/String;

    sget v3, Lcom/support/preference/R$styleable;->COUIPreferenceCategory_icon_in_right_content_description:I

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mRightIconContentDescription:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v2, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v2, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v2, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget v3, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {p2, v2, v3, v0}, Lt/k;->l(Landroid/content/res/TypedArray;III)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/preference/R$dimen;->support_preference_category_layout_title_margin_start_large:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginStartLarge:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/preference/R$dimen;->support_preference_category_layout_title_margin_start_small:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginStartSmall:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/preference/R$dimen;->support_preference_category_layout_title_margin_end_large:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginEndLarge:I

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    sget v0, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_checkbox:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    sget v0, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_loading:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    sget v0, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_singleicon:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_preference_category_Loading_marginend:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    sget v0, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_textbutton:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/support/preference/R$dimen;->coui_preference_category_textbutton_marginend:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    sget p2, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_textwithicon:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->ensureMaskRippleDrawable()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mGetWidgetLayoutListener:Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;

    return-object p0
.end method

.method private ensureMaskRippleDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/preference/R$dimen;->coui_preference_widget_layout_single_icon_radius:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIMaskRippleDrawable;->setCircleRippleMask(I)V

    :cond_0
    return-void
.end method

.method private initEndRect(Landroidx/preference/l;)V
    .locals 6

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    if-eqz v1, :cond_12

    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    if-nez v1, :cond_2

    const-string p0, "COUIPreferenceCategory"

    const-string p1, "inflate mWidgetLayoutRes failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput-boolean v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleOnly:Z

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    iget-object v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    iget v5, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginEndLarge:I

    add-int/2addr v4, v5

    if-eq v2, v4, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginEndMap:Landroid/util/ArrayMap;

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v4, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginEndLarge:I

    add-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mGetWidgetLayoutListener:Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    new-instance v2, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory$1;-><init>(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_5
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_6

    return-void

    :cond_6
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_8

    iget p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    sget v1, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_singleicon:I

    if-ne p1, v1, :cond_7

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->ensureMaskRippleDrawable()V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    invoke-static {p1, v3}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/view/View;Z)V

    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mItemviewClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_9

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-static {p1, v3, v3}, Lcom/coui/appcompat/rippleutil/COUIRippleDrawableUtil;->setPressRippleDrawable(Landroid/view/View;IZ)V

    :cond_9
    :goto_2
    iget p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    sget v1, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_textwithicon:I

    if-ne p1, v1, :cond_c

    sget p1, Lcom/support/preference/R$id;->text_in_composition:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->rightTextfixSecondaryColor()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    invoke-static {v1, v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    sget v1, Lcom/support/preference/R$id;->icon_in_composition:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_10

    iget v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconInRight:I

    if-eqz v2, :cond_10

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    :cond_c
    sget v1, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_textbutton:I

    if-ne p1, v1, :cond_d

    sget p1, Lcom/support/preference/R$id;->text_button:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_10

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/coui/appcompat/textviewcompatutil/COUITextViewCompatUtil;->setPressRippleDrawable(Landroid/widget/TextView;)V

    goto :goto_5

    :cond_d
    sget v1, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_singleicon:I

    if-ne p1, v1, :cond_e

    sget p1, Lcom/support/preference/R$id;->singleIcon:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconInRight:I

    if-eqz v1, :cond_f

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mRightIconContentDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mRightIconContentDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_e
    sget v1, Lcom/support/preference/R$layout;->coui_preference_category_widget_layout_loading:I

    if-ne p1, v1, :cond_f

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    sget v1, Lcom/support/preference/R$id;->text_in_loading:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    goto :goto_5

    :cond_f
    :goto_4
    const/4 p1, 0x0

    :cond_10
    :goto_5
    if-eqz p1, :cond_13

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    const/4 v2, 0x2

    if-nez v1, :cond_11

    const/high16 v0, 0x41400000    # 12.0f

    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_6

    :cond_11
    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/preference/R$dimen;->coui_preference_widget_layout_min_height_when_title_isnot_small:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    :goto_6
    new-instance v0, Lcom/coui/appcompat/preference/COUIPreferenceCategory$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory$2;-><init>(Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_7

    :cond_12
    if-eqz v0, :cond_13

    const/16 p1, 0x8

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    :goto_7
    iget-boolean p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleOnly:Z

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_14

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    return-void
.end method

.method private initStartRect(Landroidx/preference/l;)V
    .locals 9

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleOnly:Z

    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    :cond_0
    sget v2, Lcom/support/preference/R$id;->icon_with_title:I

    invoke-virtual {p1, v2}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageView;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->ensureMaskRippleDrawable()V

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMaskRippleDrawable:Lcom/coui/appcompat/state/COUIMaskRippleDrawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleIconContentDescription:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleIconContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move-object v2, v4

    :cond_3
    :goto_0
    sget v3, Lcom/support/preference/R$id;->reddot_with_title:I

    invoke-virtual {p1, v3}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v5, :cond_4

    move-object v4, v3

    check-cast v4, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    :cond_4
    const/16 v3, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v2, :cond_8

    iget v7, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconWithTitle:I

    if-eqz v7, :cond_7

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleOnly:Z

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v7, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    if-ne v7, v6, :cond_5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/preference/R$dimen;->coui_category_title_margin_end_with_icon_large:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/support/preference/R$dimen;->coui_category_title_margin_end_with_icon_small:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    move v2, v0

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    move v2, v5

    :goto_2
    if-eqz v4, :cond_a

    iget-object v7, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInReddot:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    if-nez v2, :cond_9

    invoke-virtual {v4, v6}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInReddot:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iput-boolean v5, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleOnly:Z

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lcom/support/preference/R$dimen;->coui_category_title_pading_end_with_reddot_default:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v1, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/preference/R$dimen;->coui_preference_category_text_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorSecondNeutral:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_c
    if-ne v1, v6, :cond_d

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_preference_category_text_height_large:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_d
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_preference_category_text_height_medium:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorPrimaryNeutral:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_4
    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginStartSmall:I

    if-eq v2, v3, :cond_f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mLayoutTitleMarginStartLarge:I

    if-eq v2, v3, :cond_f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :cond_f
    :goto_5
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    iget v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    if-nez v2, :cond_10

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->support_preference_category_layout_title_margin_end_new:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->support_preference_category_layout_title_margin_end_new:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_10
    if-ne v2, v6, :cond_11

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_common_category_text_padding_top_Large_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_common_category_text_padding_bottom_large_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_11
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_common_category_text_padding_top_medium_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/preference/R$dimen;->coui_common_category_text_padding_bottom_medium_style:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_6
    iget-object v2, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_12
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_15

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$d0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginTopType:I

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_category_margintop_large:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_13
    if-ne v1, v0, :cond_14

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_category_margintop_small:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_7

    :cond_14
    if-ne v1, v6, :cond_15

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_category_margintop_zero:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_15
    :goto_7
    return-void
.end method


# virtual methods
.method protected getWidgetLayout()Landroid/view/View;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    return-object p0
.end method

.method public getWidgetLayout(Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1, v0}, Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;->widgetInflated(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mGetWidgetLayoutListener:Lcom/coui/appcompat/preference/COUIPreferenceCategory$IGetWidgetLayoutListener;

    :goto_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/l;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->initStartRect(Landroidx/preference/l;)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->initEndRect(Landroidx/preference/l;)V

    return-void
.end method

.method protected rightTextfixSecondaryColor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setHorizontalMarginType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mHorizontalMarginType:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconInRight(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconInRight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconInRight:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconWithTitle(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mIconWithTitle:I

    return-void
.end method

.method public setItemViewLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mItemviewClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setMarginTopType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginTopType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mMarginTopType:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setRightIconContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mRightIconContentDescription:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTextInReddot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInReddot:Ljava/lang/String;

    return-void
.end method

.method public setTextInRight(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTextInRight:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setTitleIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setTitleIconContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleIconContentDescription:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitleType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mTitleType:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setWidgetLayoutClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method protected setWidgetLayoutRes(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->mWidgetLayoutRes:I

    return-void
.end method
