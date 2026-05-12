.class public Lcom/coui/appcompat/poplist/RoundFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final CANVAS_CLIP:I = 0x0

.field private static final MAX_COLOR:I = 0xff

.field public static final OUTLINE_CLIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RoundFrameLayout"


# instance fields
.field private mAllowDispatchEvent:Z

.field private mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

.field private mClipMode:I

.field private mIsSupportSRCWhenBlur:Ljava/lang/Boolean;

.field private mIsSupportSmoothRoundCorner:Z

.field private mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

.field private mOutlineAlpha:F

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private final mOverrideRect:Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRadius:F

.field private mRectF:Landroid/graphics/RectF;

.field private mRoundCornerRadius:F

.field private mRoundCornerWeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOutlineRect:Landroid/graphics/Rect;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 6
    iput p3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOutlineAlpha:F

    const/4 p3, 0x1

    .line 7
    iput-boolean p3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mAllowDispatchEvent:Z

    .line 8
    sget-object v0, Lcom/support/poplist/R$styleable;->RoundFrameLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget p2, Lcom/support/poplist/R$styleable;->RoundFrameLayout_couiRoundCornerRadius:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerRadius:F

    .line 10
    sget p2, Lcom/support/poplist/R$styleable;->RoundFrameLayout_rfRadius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    .line 11
    sget p2, Lcom/support/poplist/R$styleable;->RoundFrameLayout_couiClipType:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mClipMode:I

    .line 12
    sget p2, Lcom/support/poplist/R$styleable;->RoundFrameLayout_couirfRoundCornerWeight:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerWeight:F

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    .line 15
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    .line 16
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    .line 17
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isVersionSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mIsSupportSmoothRoundCorner:Z

    .line 18
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->isSupportRoundCornerWhenBlur()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mIsSupportSRCWhenBlur:Ljava/lang/Boolean;

    .line 19
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 20
    new-instance p1, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;

    invoke-direct {p1, p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;-><init>(Lcom/coui/appcompat/poplist/RoundFrameLayout;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    iget p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mClipMode:I

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->setClipMode(I)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    .line 23
    new-instance p1, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$color;->coui_popup_list_mix_blur_light:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 25
    invoke-static {p2}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setMixColorLight([F)V

    .line 26
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$color;->coui_popup_list_mix_blur_dark:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 28
    invoke-static {p2}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setMixColorDark([F)V

    .line 29
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget p3, Lcom/support/appcompat/R$color;->coui_popup_list_blend_blur_light:I

    invoke-static {p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 31
    invoke-static {p2}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setBlendColorLight([F)V

    .line 32
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p2, Lcom/support/appcompat/R$color;->coui_popup_list_blend_blur_dark:I

    invoke-static {p0, p2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 34
    invoke-static {p0}, Lcom/coui/appcompat/uiutil/UIUtil;->colorToFloats(I)[F

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setBlendColorDark([F)V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOutlineAlpha:F

    return p0
.end method

.method static synthetic access$200(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOutlineRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->execute16SRC()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerRadius:F

    return p0
.end method

.method static synthetic access$600(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->execute15SRC()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    return p0
.end method

.method static synthetic access$800(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerWeight:F

    return p0
.end method

.method private dispatchDraw27(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private dispatchDraw28(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->genPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private execute15SRC()Z
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->isAdaptedOn15()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->isAdaptedOn16()Z

    move-result p0

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

.method private execute16SRC()Z
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->isSupportSRCWithBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerRadius:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private genPath()Landroid/graphics/Path;
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->execute16SRC()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oplus/graphics/OplusPathAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/graphics/OplusPathAdapter;-><init>(Landroid/graphics/Path;I)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOplusPathAdapter:Lcom/oplus/graphics/OplusPathAdapter;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerRadius:F

    sget-object v3, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v2, v3}, Lcom/oplus/graphics/OplusPathAdapter;->addSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->execute15SRC()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oplus/graphics/OplusPath;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Lcom/oplus/graphics/OplusPath;-><init>(Landroid/graphics/Path;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    iget v3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerWeight:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/graphics/OplusPath;->addSmoothRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerRadius:F

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    :goto_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private isAdaptedOn15()Z
    .locals 2

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->isSupportSRCWithBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerWeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAdaptedOn16()Z
    .locals 3

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->isSupportSRCWithBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerRadius:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRoundCornerWeight:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    cmpl-float p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSupportSRCWithBlur()Z
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mIsSupportSRCWhenBlur:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

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


# virtual methods
.method public clearOverrideOutline()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOutlineAlpha:F

    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->dispatchDraw28(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mAllowDispatchEvent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getUseBackgroundBlur()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result p0

    return p0
.end method

.method initUseBackgroundBlur(Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/coui/appcompat/uiutil/UIUtil;->ANIM_LEVEL_SUPPORT_BLUR_MIN:Lcom/coui/appcompat/uiutil/AnimLevel;

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->initUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V

    return-void
.end method

.method initUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setUseBackgroundBlur(ZLcom/coui/appcompat/uiutil/AnimLevel;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const-string v1, "RoundFrameLayout"

    if-nez v0, :cond_0

    const-string p0, "Hardware accelerate is disabled! Set background blur failed."

    invoke-static {v1, p0}, Lcom/coui/appcompat/log/COUILog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->isMaterialBlurEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setTargetView(Landroid/view/View;)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mIsSupportSRCWhenBlur:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "current version support roundCorner when use blur"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$attr;->couiRoundCornerMWeight:I

    invoke-static {v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrFloat(Landroid/content/Context;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setSmoothWeight(F)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    :cond_1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$dimen;->coui_round_corner_m_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->setCornerRadius(F)Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->applyBlurBackground()V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {p0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->release()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr p2, p0

    int-to-float p0, p2

    invoke-virtual {p3, p4, v0, p1, p0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setAllowDispatchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mAllowDispatchEvent:Z

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mBackgroundBlurBuilder:Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;

    invoke-virtual {v0}, Lcom/coui/appcompat/uiutil/COUIBackgroundBlurBuilder;->useBackgroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setClipMode(I)V
    .locals 1

    iput p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mClipMode:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p0, p1}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_five:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/support/poplist/R$color;->coui_popup_outline_spot_shadow_color:I

    invoke-static {p1, v0}, Lr/a;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :goto_0
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setOverrideOutline(IIIIF)V
    .locals 0

    iput p5, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOutlineAlpha:F

    iget-object p5, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mOverrideRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout;->mRadius:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
