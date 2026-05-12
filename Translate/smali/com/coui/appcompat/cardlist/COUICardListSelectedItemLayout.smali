.class public Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
.super Lcom/coui/appcompat/preference/ListSelectedItemLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$AnimatorHelper;
    }
.end annotation


# static fields
.field public static final T:I = 0x20

.field private static final TAG:Ljava/lang/String; = "COUICardListSelectedItemLayout"


# instance fields
.field private final HEAD_OR_TAIL_PADDING:I

.field private mApplyOutline:Z

.field private mBottomRounded:Z

.field private mCardBackgroundColor:I

.field private final mCardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mCardRect:Landroid/graphics/RectF;

.field private mConfigurationChangeListener:Lcom/coui/appcompat/list/ConfigurationChangedListener;

.field private mHorizontalMargin:I

.field private mInitPaddingBottom:I

.field private mInitPaddingTop:I

.field private mIsDrawPathType:Z

.field private mIsSelected:Z

.field private mMainLayoutToSetExtraPadding:Landroid/view/View;

.field private mMinimumHeight:I

.field private mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

.field private final mOutLineProvider:Landroid/view/ViewOutlineProvider;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadii:[F

.field private mRadius:F

.field protected mRestoreBackgroundAppearAnimator:Landroid/animation/ValueAnimator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected mRestoreBackgroundDisappearAnimator:Landroid/animation/ValueAnimator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mTopRounded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/preference/R$dimen;->coui_list_card_head_or_tail_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->HEAD_OR_TAIL_PADDING:I

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardRect:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPaint:Landroid/graphics/Paint;

    .line 8
    new-instance v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    new-instance v0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$2;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$2;-><init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mOutLineProvider:Landroid/view/ViewOutlineProvider;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    .line 11
    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mApplyOutline:Z

    const/16 v2, 0x8

    .line 13
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadii:[F

    .line 14
    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 15
    sget-object v2, Lcom/support/preference/R$styleable;->COUICardListSelectedItemLayout:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    sget p3, Lcom/support/preference/R$styleable;->COUICardListSelectedItemLayout_listIsTiny:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 17
    sget p4, Lcom/support/preference/R$styleable;->COUICardListSelectedItemLayout_couiCardRadius:I

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    .line 18
    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p1

    .line 19
    invoke-virtual {p2, p4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->init(Landroid/content/Context;Z)V

    .line 21
    sget p1, Lcom/support/preference/R$styleable;->COUICardListSelectedItemLayout_couiCardListHorizontalMargin:I

    iget p3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    .line 22
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 24
    :try_start_0
    const-string p1, "single_card"

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->consumeDispatchingEventForState(Z)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    const-string p1, "COUICardListSelectedItemLayout"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsDrawPathType:Z

    return p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardBackgroundColor:I

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Landroid/graphics/Path;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$402(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mApplyOutline:Z

    return p1
.end method

.method private init(Landroid/content/Context;Z)V
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_card_margin_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/preference/R$dimen;->coui_preference_card_margin_horizontal_tiny:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    :goto_0
    sget p2, Lcom/support/appcompat/R$attr;->couiColorCardBackground:I

    invoke-static {p1, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mMinimumHeight:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mInitPaddingTop:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mInitPaddingBottom:I

    iget-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setCardRadiusStyle(I)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    iput-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    :goto_0
    return-void
.end method

.method private setPadding(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->HEAD_OR_TAIL_PADDING:I

    move v4, v1

    move v1, p1

    move p1, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->HEAD_OR_TAIL_PADDING:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->HEAD_OR_TAIL_PADDING:I

    :cond_2
    move p1, v1

    :goto_0
    iget v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mMinimumHeight:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mMainLayoutToSetExtraPadding:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mMainLayoutToSetExtraPadding:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, p1

    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    iget v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mInitPaddingTop:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mInitPaddingBottom:I

    add-int/2addr v3, p1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :goto_1
    return-void
.end method

.method private updatePath()V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oplus/graphics/OplusPathAdapter;

    iget-object v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v2, v1}, Lcom/oplus/graphics/OplusPathAdapter;-><init>(Landroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadii:[F

    iget-boolean v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    if-eqz v2, :cond_1

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    const/4 v5, 0x0

    aput v3, v0, v5

    if-eqz v2, :cond_2

    iget v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    aput v3, v0, v1

    if-eqz v2, :cond_3

    iget v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    const/4 v3, 0x2

    aput v1, v0, v3

    if-eqz v2, :cond_4

    iget v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_3

    :cond_4
    move v1, v4

    :goto_3
    const/4 v2, 0x3

    aput v1, v0, v2

    iget-boolean v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_4

    :cond_5
    move v2, v4

    :goto_4
    const/4 v3, 0x4

    aput v2, v0, v3

    if-eqz v1, :cond_6

    iget v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_5

    :cond_6
    move v2, v4

    :goto_5
    const/4 v3, 0x5

    aput v2, v0, v3

    if-eqz v1, :cond_7

    iget v2, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    goto :goto_6

    :cond_7
    move v2, v4

    :goto_6
    const/4 v3, 0x6

    aput v2, v0, v3

    if-eqz v1, :cond_8

    iget v4, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    :cond_8
    const/4 v1, 0x7

    aput v4, v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, p0, v0, v2}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_7

    :cond_9
    iget-object v3, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardRect:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    iget-boolean v7, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mTopRounded:Z

    iget-boolean v9, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mBottomRounded:Z

    move v6, v7

    move v8, v9

    invoke-static/range {v3 .. v9}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FZZZZ)Landroid/graphics/Path;

    :goto_7
    return-void
.end method


# virtual methods
.method public changeDrawCanvasType(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsDrawPathType:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsDrawPathType:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsDrawPathType:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mApplyOutline:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->updatePath()V

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method public getIsSelected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsSelected:Z

    return p0
.end method

.method protected getLayoutPath()Landroid/graphics/Path;
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method public getMarginHorizontal()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    return p0
.end method

.method public isCardType()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mConfigurationChangeListener:Lcom/coui/appcompat/list/ConfigurationChangedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coui/appcompat/list/ConfigurationChangedListener;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/ListSelectedItemLayout;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->updatePath()V

    iget-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsDrawPathType:Z

    if-nez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mOutLineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mApplyOutline:Z

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_0
    return-void
.end method

.method public refreshCardBg(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mCardBackgroundColor:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public declared-synchronized restoreAnimator(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$AnimatorHelper;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public saveAndEndAnimator()Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$AnimatorHelper;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public setConfigurationChangeListener(Lcom/coui/appcompat/list/ConfigurationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mConfigurationChangeListener:Lcom/coui/appcompat/list/ConfigurationChangedListener;

    return-void
.end method

.method public setIsSelected(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setIsSelected(ZZ)V

    return-void
.end method

.method public setIsSelected(ZZ)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsSelected:Z

    if-eq v0, p1, :cond_0

    .line 3
    iput-boolean p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mIsSelected:Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p1, p2}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setStateLocked(IZZZ)V

    :cond_0
    return-void
.end method

.method public setMainLayoutToSetExtraPadding(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mMainLayoutToSetExtraPadding:Landroid/view/View;

    return-void
.end method

.method public setMarginHorizontal(I)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mHorizontalMargin:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPositionInGroup(I)V
    .locals 0

    if-lez p1, :cond_0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setPadding(I)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->setCardRadiusStyle(I)V

    invoke-direct {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->updatePath()V

    :cond_0
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->mRadius:F

    invoke-direct {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->updatePath()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
