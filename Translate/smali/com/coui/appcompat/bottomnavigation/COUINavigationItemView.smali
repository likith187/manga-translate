.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;
.super Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationItemView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# static fields
.field public static final TIPS_CIRCLE:I = 0x1

.field public static final TIPS_HIDE:I = 0x3

.field public static final TIPS_OVAL:I = 0x2


# instance fields
.field private bigOffsetHorizontal:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private mDefRedDotOffset:I

.field private mDefRedDotTextOffsetHorizontal:I

.field private mDefRedDotTextOffsetVertical:I

.field private mEnlargeIconSize:I

.field private mEnlargeItemHeight:I

.field private mFlRoot:Landroid/widget/FrameLayout;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconContainer:Landroid/widget/FrameLayout;

.field private mIconMarginTop:I

.field private mIsEnlarge:Z

.field private mIsEnlargeView:Z

.field private mIsHorizontalView:Z

.field private mIsShowPressShadow:Z

.field private final mItemRect:Landroid/graphics/RectF;

.field private mLargeLabel:Landroid/widget/TextView;

.field private mLayoutType:I

.field private mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

.field private mNavigationType:I

.field private mNormalIconSize:I

.field private mNormalItemHeight:I

.field private mRedDotRect:Landroid/graphics/Rect;

.field private mSmallLabel:Landroid/widget/TextView;

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mTextSize:I

.field private offset:[I

.field private smallOffsetHorizontal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mItemRect:Landroid/graphics/RectF;

    const/4 v0, -0x2

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->smallOffsetHorizontal:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->bigOffsetHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_enlarge_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mEnlargeIconSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_normal_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNormalIconSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_enlarge_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mEnlargeItemHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_normal_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNormalItemHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_enlarge_icon_margin_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconMarginTop:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_red_dot_with_number_vertical_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotTextOffsetVertical:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotTextOffsetHorizontal:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_red_dot_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotOffset:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->offset:[I

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlarge:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsShowPressShadow:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsHorizontalView:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_small_label_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_large_label_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_view:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    sget v1, Lcom/google/android/material/R$id;->navigation_bar_item_icon_container:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    sget v1, Lcom/support/bottomnavigation/R$id;->fl_root:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    sget v1, Lcom/support/bottomnavigation/R$id;->red_dot:I

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->setTextSize(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_red_dot_with_number_horizontal_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotTextOffsetHorizontal:I

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->configStateEffectBackground()V

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private configStateEffectBackground()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_background_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    new-instance v3, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mItemRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2, v2}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskRect(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->enableSelectedState(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMinProgressForTouchEnterAnimation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    new-instance v0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr p0, p1

    int-to-double p0, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->intValue()I

    move-result p0

    return p0
.end method

.method private enlargeSelectView(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mEnlargeIconSize:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNormalIconSize:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->setIconSize(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsHorizontalView:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    iget p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconMarginTop:I

    :goto_2
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private getOffset([I)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotOffset:I

    aput p0, p1, v2

    aput p0, p1, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotTextOffsetVertical:I

    aput v0, p1, v2

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mDefRedDotTextOffsetHorizontal:I

    aput v0, p1, v1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result v0

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result v0

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    aget v0, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->bigOffsetHorizontal:I

    int-to-float p0, p0

    invoke-static {v2, p0}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v0, p0

    aput v0, p1, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->getPointNumber()I

    move-result v0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    aget v0, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->smallOffsetHorizontal:I

    int-to-float p0, p0

    invoke-static {v2, p0}, Lcom/coui/appcompat/uiutil/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0

    add-int/2addr v0, p0

    aput v0, p1, v1

    :cond_2
    :goto_0
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

.method private layoutRedDot()V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->offset:[I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getOffset([I)V

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->offset:[I

    aget v1, v3, v1

    neg-int v1, v1

    aget v2, v3, v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIconContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->offset:[I

    aget v1, v3, v1

    aget v2, v3, v2

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mRedDotRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private leftToRight()V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_enlarge_icon_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_0

    div-int/lit8 v1, v5, 0x2

    :cond_0
    iget-boolean v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int v6, v1, v5

    move v5, v1

    :goto_0
    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    add-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2, v0, v1, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsHorizontalView:Z

    return-void
.end method

.method private rightToLeft()V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_enlarge_icon_horizontal_margin:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    if-lez v5, :cond_0

    div-int/lit8 v1, v5, 0x2

    :cond_0
    iget-boolean v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v7, v6, v8}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v6, v5, v6

    iget-object v7, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    invoke-virtual {v0, v6, v7, v5, v8}, Landroid/view/View;->layout(IIII)V

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int v6, v0, v1

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-static {v8, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2, v1, v4, v0, v5}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsHorizontalView:Z

    return-void
.end method


# virtual methods
.method public childLayout(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mLayoutType:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public clearColorFilter()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsShowPressShadow:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-object p0
.end method

.method protected getItemDefaultMarginResId()I
    .locals 0

    sget p0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_enlarge_default_margin:I

    return p0
.end method

.method protected getItemLayoutResId()I
    .locals 0

    sget p0, Lcom/support/bottomnavigation/R$layout;->coui_navigation_item_layout:I

    return p0
.end method

.method public initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    const-string p1, ""

    invoke-static {p0, p1}, Landroidx/appcompat/widget/m0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlarge:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mEnlargeItemHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNormalIconSize:I

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->setIconSize(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNormalItemHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->enlargeSelectView(Z)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mCOUIHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNavigationType:I

    if-nez p0, :cond_0

    invoke-static {p1}, Ld0/h;->M0(Landroid/view/accessibility/AccessibilityNodeInfo;)Ld0/h;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ld0/h;->k0(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ld0/h;->A0(Ljava/lang/CharSequence;)V

    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    sget-object p1, Ld0/h$a;->i:Ld0/h$a;

    invoke-virtual {p0, p1}, Ld0/h;->b(Ld0/h$a;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 p2, 0x2

    const/4 p3, 0x1

    if-ne p1, p2, :cond_0

    move p1, p3

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/support/bottomnavigation/R$bool;->is_normal_layout:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/support/bottomnavigation/R$bool;->is_big_layout:I

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget v0, Lcom/support/bottomnavigation/R$bool;->is_small_layout:I

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p5

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mLayoutType:I

    if-ne v0, p3, :cond_1

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->topToBottom()V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->isRtlMode()Z

    move-result p3

    if-nez p3, :cond_3

    if-nez p5, :cond_3

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->leftToRight()V

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    if-eqz p4, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->isRtlMode()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->rightToLeft()V

    goto :goto_1

    :cond_5
    if-nez p2, :cond_6

    if-eqz p5, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->topToBottom()V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->layoutRedDot()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/material/navigation/NavigationBarItemView;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mItemRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

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

.method public setChecked(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->enlargeSelectView(Z)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    return-void
.end method

.method public setEnlarge(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlarge:Z

    iput-boolean p2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    return-void
.end method

.method public setIconTintForWhite()V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIcon:Landroid/widget/ImageView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public setNavigationType(I)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNavigationType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mNavigationType:I

    :cond_0
    return-void
.end method

.method protected setShowPressShadow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsShowPressShadow:Z

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mTextSize:I

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mSmallLabel:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mLargeLabel:Landroid/widget/TextView;

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public topToBottom()V
    .locals 8

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_icon_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v0, v4, v3, v5, v6}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_icon_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_text_margin_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mFlRoot:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_icon_margin_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_text_margin_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2, v0, v4, v3, v5}, Landroid/view/View;->layout(IIII)V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsEnlargeView:Z

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iput-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->mIsHorizontalView:Z

    return-void
.end method
