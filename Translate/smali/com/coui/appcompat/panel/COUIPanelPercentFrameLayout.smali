.class public Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;
.super Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;
.source "SourceFile"


# static fields
.field public static final MEDIUM_AND_LARGE_SCREEN:F = 2.0f

.field public static final SMALL_SCREEN:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "COUIPanelPercentFrameLayout"

.field private static final UNSET_WIDTH:I = -0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mClipPaint:Landroid/graphics/Paint;

.field private mHasAnchor:Z

.field private mIsHandlePanel:Z

.field private mIsSupportSmoothRoundCorner:Z

.field private mMaxHeight:I

.field private mMaxHeightOfAttr:I

.field private mMaxWidth:I

.field private final mMeasureRect:Landroid/graphics/Rect;

.field private final mPath:Landroid/graphics/Path;

.field private mPreferWidth:I

.field private mRadius:F

.field private mRatio:F

.field private final mRectF:Landroid/graphics/RectF;

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
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPath:Landroid/graphics/Path;

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mClipPaint:Landroid/graphics/Paint;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 7
    iput p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRatio:F

    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mHasAnchor:Z

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    .line 10
    iput-boolean p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsSupportSmoothRoundCorner:Z

    const/4 p3, 0x0

    .line 11
    iput-object p3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    .line 12
    invoke-direct {p0, p2}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->initAttr(Landroid/util/AttributeSet;)V

    .line 13
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMeasureRect:Landroid/graphics/Rect;

    .line 14
    new-instance p0, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->enforceChangeScreenWidth()V

    return-void
.end method

.method static synthetic access$100(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)I
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updateBottomCornerRadius()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsSupportSmoothRoundCorner:Z

    return p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRadius:F

    return p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mWeight:F

    return p0
.end method

.method private createClipSmoothRoundBitmap()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->TAG:Ljava/lang/String;

    const-string v0, "createClipSmoothRoundBitmap return for width and height must be > 0"

    invoke-static {p0, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private enforceChangeScreenWidth()V
    .locals 4

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    if-ne v2, v3, :cond_1

    return-void

    :cond_1
    iput v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget-object v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enforceChangeScreenWidth : PreferWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->TAG:Ljava/lang/String;

    const-string v0, "enforceChangeScreenWidth : failed to updateConfiguration"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initAttr(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/support/panel/R$styleable;->COUIPanelPercentFrameLayout:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/panel/R$styleable;->COUIPanelPercentFrameLayout_maxPanelHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeightOfAttr:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isSmallScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x40000000    # 2.0f

    :goto_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRatio:F

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isPathSupportSingleCorner()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isSmoothRoundRectOn()Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    :cond_2
    iput-boolean v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsSupportSmoothRoundCorner:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerXLRadius:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRadius:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerXLWeight:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mWeight:F

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p1

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/support/appcompat/R$attr;->couiRoundCornerXL:I

    invoke-static {p1, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRadius:F

    invoke-direct {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updateClipToOutline(Z)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$attr;->couiRoundCornerXL:I

    invoke-static {p1, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRadius:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mWeight:F

    :cond_5
    :goto_1
    return-void
.end method

.method private updateBottomCornerRadius()I
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsHandlePanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/panel/R$dimen;->coui_bottom_sheet_bg_top_corner_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/panel/R$dimen;->coui_bottom_sheet_bg_bottom_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coui/appcompat/uiutil/UIUtil;->contextToActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/panel/R$dimen;->coui_bottom_sheet_bg_top_corner_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    return p0
.end method

.method private updateClipToOutline(Z)V
    .locals 3

    sget-object v0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateClipToOutline setOutlineProvider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;-><init>(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    :goto_0
    return-void
.end method

.method private updatePath()V
    .locals 11

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updateBottomCornerRadius()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRadius:F

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mWeight:F

    invoke-static {v0, v1, v2, p0}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getSmoothRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FF)Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    iget v5, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRadius:F

    iget v6, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mWeight:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v10}, Lcom/coui/appcompat/roundRect/COUIShapePath;->getSmoothRoundRectPath(Landroid/graphics/Path;Landroid/graphics/RectF;FFZZZZ)Landroid/graphics/Path;

    :goto_0
    return-void
.end method


# virtual methods
.method public delPreferWidth()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    sget-object p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->TAG:Ljava/lang/String;

    const-string v0, "delPreferWidth"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;)I

    move-result v0

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mClipPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_0
    return-void
.end method

.method getGridNumber()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mGridNumber:I

    return p0
.end method

.method public getHasAnchor()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mHasAnchor:Z

    return p0
.end method

.method getPaddingSize()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingSize:I

    return p0
.end method

.method getPaddingType()I
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->mPaddingType:I

    return p0
.end method

.method public getRatio()F
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsHandlePanel:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRatio:F

    return p0
.end method

.method public isIsHandlePanel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsHandlePanel:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isSmallScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    :goto_0
    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRatio:F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMeasureRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMeasureRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    if-le v0, v1, :cond_0

    if-lez v1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMeasureRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isSmallScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMeasureRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxWidth:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->setPercentIndentEnabled(Z)V

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxWidth:I

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/coui/appcompat/grid/COUIPercentWidthFrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->enforceChangeScreenWidth()V

    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRectF:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updatePath()V

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsSupportSmoothRoundCorner:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    if-ne p1, p3, :cond_1

    if-eq p2, p4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->createClipSmoothRoundBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mBitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method restoreDefaultMaxSize()V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxWidth:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxWidth:I

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeightOfAttr:I

    iput v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setHasAnchor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mHasAnchor:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mHasAnchor:Z

    invoke-direct {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updateClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method public setIsHandlePanel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mIsHandlePanel:Z

    return-void
.end method

.method setMaxSize(II)V
    .locals 1

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxWidth:I

    iput p2, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mMaxHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setPreferWidth(I)V
    .locals 2

    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    sget-object p1, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferWidth =\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mPreferWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateLayoutWhileConfigChange(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coui/appcompat/panel/COUIPanelMultiWindowUtils;->isSmallScreen(Landroid/content/Context;Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    :goto_0
    iput p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->mRatio:F

    return-void
.end method
