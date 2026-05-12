.class public Lcom/coui/appcompat/bottomnavigation/COUINavigationView;
.super Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationView;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuConfigRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;,
        Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENTER_TRANSLATE_ANIMATION_DURATION:J = 0x15eL

.field private static final DEFAULT_HIDE_TRANSLATE_ANIMATION_DURATION:J = 0xc8L

.field public static final DEFAULT_ITEM_LAYOUT_TYPE:I = 0x0

.field private static final DEFAULT_SHOW_TRANSLATE_ANIMATION_DURATION:J = 0xfaL

.field private static final END_ALPHA:F = 1.0f

.field public static final ENTER_ANIMATION_TYPE:I = 0x1

.field public static final EXIT_ANIMATION_TYPE:I = 0x2

.field public static final NAVIGATION_TYPE_ENLARGE:I = 0x2

.field public static final NAVIGATION_TYPE_TAB:I = 0x1

.field public static final NAVIGATION_TYPE_TOOL:I = 0x0

.field private static final START_ALPHA:F = 0.0f

.field public static final VERTICAL_ITEM_LAYOUT_TYPE:I = 0x1


# instance fields
.field private mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

.field private mConfigChangedListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameOutsets:Landroid/graphics/Rect;

.field private mDividerView:Landroid/view/View;

.field private mEndListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

.field private mEnlargeBgView:Landroid/widget/FrameLayout;

.field private mEnlargeNavigationViewBgId:I

.field private mEnlargeSelectListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

.field private mEnterAnimation:Landroid/animation/Animator;

.field private mEnterTranslateAnimation:Landroid/animation/ValueAnimator;

.field private mExitAnimation:Landroid/animation/Animator;

.field private mHideTranslateAnimation:Landroid/animation/ValueAnimator;

.field private mIsCheckEnlarge:Z

.field private mIsEnlarge:Z

.field private mLayoutType:I

.field private mNavigationType:I

.field private mNextMenuResId:I

.field private mPopupRuleEnable:Z

.field private mShowHideListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

.field private mShowTranslateAnimation:Landroid/animation/ValueAnimator;

.field private mTextSizeResId:I

.field private mWindowFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/support/bottomnavigation/R$attr;->couiNavigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/bottomnavigation/R$style;->Widget_COUI_COUINavigationView:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNextMenuResId:I

    .line 6
    iput v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mTextSizeResId:I

    .line 7
    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsEnlarge:Z

    .line 8
    iput-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsCheckEnlarge:Z

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mPopupRuleEnable:Z

    const/4 v2, 0x0

    .line 10
    iput-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrame:Landroid/graphics/Rect;

    .line 11
    iput-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mWindowFrame:Landroid/graphics/Rect;

    .line 12
    iput-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrameOutsets:Landroid/graphics/Rect;

    .line 13
    sget-object v2, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView:[I

    invoke-static {p1, p2, v2, p3, p4}, Landroidx/appcompat/widget/h0;->w(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/h0;

    move-result-object p2

    .line 14
    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenuView()Landroidx/appcompat/view/menu/MenuView;

    move-result-object p3

    check-cast p3, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iput-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    .line 15
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 16
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/bottomnavigation/R$color;->coui_bottom_tool_navigation_item_selector:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    .line 18
    :goto_0
    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget p4, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviIconTint:I

    invoke-virtual {p2, p4}, Landroidx/appcompat/widget/h0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_navigationType:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/h0;->k(II)I

    move-result p3

    iput p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNavigationType:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 21
    sget p4, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTextSize:I

    invoke-virtual {p2, p4, p3}, Landroidx/appcompat/widget/h0;->f(II)I

    move-result p3

    .line 22
    sget p4, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTextSize:I

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p4

    iput p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mTextSizeResId:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->fontScale:F

    int-to-float p3, p3

    const/4 v2, 0x2

    .line 24
    invoke-static {p3, p4, v2}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    float-to-int p3, p3

    .line 25
    iget-object p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p4, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setTextSize(I)V

    .line 26
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTipsType:I

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/widget/h0;->l(II)I

    move-result p3

    .line 27
    sget p4, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTipsNumber:I

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/widget/h0;->l(II)I

    move-result p4

    .line 28
    sget v3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviMenu:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    sget v3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviMenu:I

    invoke-virtual {p2, v3, v0}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->inflateMenu(I)V

    .line 30
    invoke-virtual {p0, v0, p4, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setTipsView(III)V

    .line 31
    :cond_1
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiToolNavigationViewBg:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p3

    .line 32
    sget p4, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiTabNavigationViewBg:I

    invoke-virtual {p2, p4, v0}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result p4

    .line 33
    sget v3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiEnlargeNavigationViewBg:I

    invoke-virtual {p2, v3, v0}, Landroidx/appcompat/widget/h0;->n(II)I

    move-result v3

    iput v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeNavigationViewBgId:I

    .line 34
    iget v3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNavigationType:I

    if-ne v3, v2, :cond_2

    .line 35
    iput-boolean v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsEnlarge:Z

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 37
    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->initEnlargeParams()V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    .line 38
    invoke-virtual {p0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 39
    :cond_3
    invoke-virtual {p0, p4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 40
    :goto_1
    iget-object p3, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget p4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNavigationType:I

    invoke-virtual {p3, p4}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemNavigationType(I)V

    .line 41
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiItemLayoutType:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/h0;->s(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 42
    sget p3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiItemLayoutType:I

    invoke-virtual {p2, p3, v0}, Landroidx/appcompat/widget/h0;->l(II)I

    move-result p3

    .line 43
    invoke-virtual {p0, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setItemLayoutType(I)V

    .line 44
    :cond_4
    invoke-virtual {p0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setLabelVisibilityMode(I)V

    .line 45
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 46
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 47
    invoke-direct {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->addCompatibilityTopDivider(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setElevation(F)V

    .line 49
    invoke-virtual {p2}, Landroidx/appcompat/widget/h0;->y()V

    .line 50
    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->initAnimation()V

    .line 51
    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->applyWindowInsets()V

    .line 52
    invoke-static {p0, v0}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsCheckEnlarge:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsCheckEnlarge:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeSelectListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->checkEnlargeState()V

    return-void
.end method

.method static synthetic access$400(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNextMenuResId:I

    return p0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;I)I
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNextMenuResId:I

    return p1
.end method

.method static synthetic access$500(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEndListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowHideListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    return-object p0
.end method

.method private addCompatibilityTopDivider(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    sget v2, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {p1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_shadow_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, -0x1

    invoke-direct {p1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsEnlarge:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTop(I)V

    :goto_0
    return-void
.end method

.method private addEnlargeBackgroundView()V
    .locals 3

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/support/bottomnavigation/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-static {p0, v2}, Lr/a;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v0, v1}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private adjustMenuItemTextSize(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mTextSizeResId:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mTextSizeResId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mLayoutType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_small_text_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setTextSize(I)V

    return-void
.end method

.method private applyWindowInsets()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    new-instance v0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$1;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-static {p0, v0}, Lcom/google/android/material/internal/ViewUtils;->doOnApplyWindowInsets(Landroid/view/View;Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private checkEnlargeState()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    iget v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeNavigationViewBgId:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsCheckEnlarge:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setItemForEnlargeColor()V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeNavigationViewBgId:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->clearColorFilter()V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/bottomnavigation/R$color;->coui_navigation_enlarge_default_bg:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private initAnimation()V
    .locals 7

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    new-instance v4, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v4}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    new-instance v6, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$3;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    new-array v6, v3, [F

    fill-array-data v6, :array_1

    invoke-static {v1, v2, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;

    invoke-direct {v2, p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$4;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterTranslateAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;

    invoke-direct {v2, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$5;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterTranslateAnimation:Landroid/animation/ValueAnimator;

    new-array v4, v3, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mHideTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIOutEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mHideTranslateAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mHideTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$6;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mHideTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$7;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$7;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v3, [F

    fill-array-data v0, :array_4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;

    invoke-direct {v1}, Lcom/coui/appcompat/animation/COUIInEaseInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowTranslateAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$8;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$8;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowTranslateAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$9;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static isNumeric(Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private setItemForEnlargeColor()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemForEnlargeColor()V

    return-void
.end method

.method private setTipsView(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;Ljava/lang/String;I)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 8
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p3

    invoke-virtual {p3, p0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-static {p2}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->isNumeric(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    .line 12
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointNumber(I)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p0

    const/4 p3, 0x3

    invoke-virtual {p0, p3}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    .line 14
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointText(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    .line 16
    invoke-virtual {p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->getCOUIHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->setPointMode(I)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustNavigationItem()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setItemLayoutType(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_text_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setTextSize(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setItemLayoutType(I)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/bottomnavigation/R$dimen;->coui_navigation_item_large_text_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setTextSize(I)V

    :goto_0
    return-void
.end method

.method protected createNavigationBarMenuView(Landroid/content/Context;)Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;
    .locals 2

    new-instance p0, Landroid/view/ContextThemeWrapper;

    sget v0, Lcom/support/bottomnavigation/R$attr;->COUINavigationViewItemStyle:I

    sget v1, Lcom/support/bottomnavigation/R$style;->COUINavigationView_NoAnimation:I

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrId(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public getBarrierDirection()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mWindowFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mWindowFrame:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mWindowFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/support/poplist/R$dimen;->coui_popup_list_window_min_window_height_to_apply_vertical_barrier:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-gt v0, p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public getCOUINavigationMenuView()Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    return-object p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrame:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getDividerView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    return-object p0
.end method

.method public getEnlargeBgView()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeBgView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getMaxItemCount()I
    .locals 0

    .line 1
    const/16 p0, 0xa

    return p0
.end method

.method public getMaxItemCount(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method public getMaxItemCount(II)I
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x7

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrameOutsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/bottomnavigation/R$dimen;->coui_popup_list_window_gap_to_navigation_view:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrameOutsets:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDisplayFrameOutsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPopupMenuRuleEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mPopupRuleEnable:Z

    return p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->hide(Z)V

    return-void
.end method

.method public hide(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mHideTranslateAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public inflateMenu(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    :cond_0
    invoke-super {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->inflateMenu(I)V

    iget p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNavigationType:I

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setShowPressShadow(Z)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsEnlarge:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->addEnlargeBackgroundView()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->adjustMenuItemTextSize(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mLayoutType:I

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemLayoutType(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mConfigChangedListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;->onConfigChanged(Landroid/content/res/Configuration;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->adjustMenuItemTextSize(Landroid/content/Context;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/support/bottomnavigation/R$dimen;->coui_tool_navigation_item_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/material/bottomnavigation/BottomNavigationView;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public refresh()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView:[I

    sget v2, Lcom/support/bottomnavigation/R$attr;->couiNavigationViewStyle:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->isCOUIDarkTheme(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/support/bottomnavigation/R$style;->Widget_COUI_COUINavigationView_Dark:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/support/bottomnavigation/R$style;->Widget_COUI_COUINavigationView:I

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget v2, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviIconTint:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    sget v2, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiNaviTextColor:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->setItemTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mDividerView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/support/appcompat/R$attr;->couiColorDivider:I

    invoke-static {v2, v3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    sget v1, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiToolNavigationViewBg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v3, Lcom/support/bottomnavigation/R$styleable;->COUINavigationMenuView_couiTabNavigationViewBg:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNavigationType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    if-eqz v3, :cond_3

    check-cast v1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    invoke-virtual {v1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;->refresh()V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public setAnimationType(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnterAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnlargeIndex(I)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget-boolean p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mIsEnlarge:Z

    invoke-virtual {v0, p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setEnlarge(ZI)V

    return-void
.end method

.method public setItemLayoutType(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mLayoutType:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->adjustMenuItemTextSize(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    iget p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mLayoutType:I

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->setItemLayoutType(I)V

    return-void
.end method

.method public setNeedTextAnim(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOnAnimatorListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEndListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationEnterExitListener;

    return-void
.end method

.method public setOnAnimatorShowHideListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowHideListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnNavigationShowHideListener;

    return-void
.end method

.method public setOnConfigChangedListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mConfigChangedListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnConfigChangedListener;

    return-void
.end method

.method public setOnEnlargeSelectListener(Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mEnlargeSelectListener:Lcom/coui/appcompat/bottomnavigation/COUINavigationView$OnEnlargeSelectListener;

    new-instance p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView$2;-><init>(Lcom/coui/appcompat/bottomnavigation/COUINavigationView;)V

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarView;->setOnItemSelectedListener(Lcom/coui/appcompat/material/navigation/NavigationBarView$OnItemSelectedListener;)V

    return-void
.end method

.method public setPopupMenuRuleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mPopupRuleEnable:Z

    return-void
.end method

.method public setTipsView(III)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setTipsView(ILjava/lang/String;I)V

    return-void
.end method

.method public setTipsView(ILjava/lang/String;I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    .line 5
    invoke-virtual {p0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->getCOUINavigationMenuView()Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;->getVisibleItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getItemId()I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setTipsView(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;Ljava/lang/String;I)V

    return-void
.end method

.method public setTipsViewByItemId(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setTipsView(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;Ljava/lang/String;I)V

    return-void
.end method

.method public setTipsViewByItemId(ILjava/lang/String;I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mCOUINavigationMenuView:Lcom/coui/appcompat/bottomnavigation/COUINavigationMenuView;

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/material/navigation/NavigationBarMenuView;->findItemView(I)Lcom/coui/appcompat/material/navigation/NavigationBarItemView;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->setTipsView(Lcom/coui/appcompat/bottomnavigation/COUINavigationItemView;Ljava/lang/String;I)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mShowTranslateAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    .line 4
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method public switchToMenu(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->switchToMenu(IZ)V

    return-void
.end method

.method public switchToMenu(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2
    iput p1, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mNextMenuResId:I

    .line 3
    iget-object p0, p0, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->mExitAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/bottomnavigation/COUINavigationView;->inflateMenu(I)V

    :goto_0
    return-void
.end method
