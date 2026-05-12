.class public final Lcom/coui/appcompat/tips/COUIMarqueeTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;,
        Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;

.field private static final DEFAULT_DISPLAY_REFRESH:F = 60.0f

.field private static final DEFAULT_SCROLL_DELAY_DURATION:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MarqueeView"


# instance fields
.field private fadingEdgeStrength:F

.field private isActualMarqueeByMeasured:Z

.field private isAllCharactersLtR:Z

.field private isMarqueeEnable:Z

.field private mContinueScrollingEnable:Z

.field private mCurrentScrollLocation:F

.field private mFinalDrawText:Ljava/lang/String;

.field private mIndividuallyAssembledText:Ljava/lang/String;

.field private mIndividuallyAssembledTextWidth:I

.field private mInitStringWidth:I

.field private mOriginText:Ljava/lang/String;

.field private mScrollRepeatCount:I

.field private mScroller:Landroid/animation/ValueAnimator;

.field private mScrollerSpeed:F

.field private mStartScrollRunnable:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

.field private final mTextViewScrollDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->Companion:Lcom/coui/appcompat/tips/COUIMarqueeTextView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mOriginText:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/tips/R$dimen;->coui_top_tips_scroll_speed:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollerSpeed:F

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/support/tips/R$dimen;->coui_top_tips_scroll_text_start_location:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    .line 8
    iput-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/tips/R$dimen;->coui_top_tips_scroll_text_interval:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mTextViewScrollDistance:I

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isAllCharactersLtR:Z

    .line 11
    invoke-direct {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->initSpeed()V

    .line 12
    invoke-direct {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->initTextViewAttributes()V

    .line 13
    iget-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mStartScrollRunnable:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 15
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/tips/COUIMarqueeTextView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->continueRoll$lambda$2$lambda$1(Lcom/coui/appcompat/tips/COUIMarqueeTextView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final checkAllCharactersDirections()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mOriginText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    const-string v1, "if (Build.VERSION.SDK_IN\u2026 1f, 0f, false)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isAllCharactersLtR:Z

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mOriginText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v4, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isAllCharactersLtR:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static final continueRoll$lambda$2$lambda$1(Lcom/coui/appcompat/tips/COUIMarqueeTextView;Landroid/animation/ValueAnimator;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollerSpeed:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private final generateTextDistance()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mTextViewScrollDistance:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v0, v0

    iget p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mTextViewScrollDistance:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    if-ltz v0, :cond_1

    const/4 p0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eq p0, v0, :cond_1

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private final getMContentHeight()F
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/4 v0, 0x2

    int-to-float v0, v0

    div-float/2addr p0, v0

    return p0
.end method

.method private final initSpeed()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/tips/R$dimen;->coui_top_tips_scroll_speed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollerSpeed:F

    new-instance v0, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;-><init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mStartScrollRunnable:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    return-void
.end method

.method private final initTextViewAttributes()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tips/R$dimen;->coui_top_tips_fading_edge_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setFadingEdgeLength(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tips/R$dimen;->coui_top_tips_scroll_text_start_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private final setActualMarqueeByMeasured(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setFadingEdgeStrength(F)V

    iput-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isActualMarqueeByMeasured:Z

    return-void
.end method

.method private final setContent()V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mOriginText:Ljava/lang/String;

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->generateTextDistance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollRepeatCount:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledTextWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledTextWidth:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    iput-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    if-ltz v1, :cond_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mInitStringWidth:I

    invoke-direct {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->checkAllCharactersDirections()V

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method private final setFadingEdgeStrength(F)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    iput p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->fadingEdgeStrength:F

    return-void
.end method


# virtual methods
.method public final continueRoll()V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setMarqueeEnable(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-boolean v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mContinueScrollingEnable:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScroller:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScroller:Landroid/animation/ValueAnimator;

    :cond_1
    iput-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mContinueScrollingEnable:Z

    const v1, 0x7fffffff

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScroller:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/coui/appcompat/animation/COUILinearInterpolator;

    invoke-direct {v2}, Lcom/coui/appcompat/animation/COUILinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v0, Lcom/coui/appcompat/tips/a;

    invoke-direct {v0, p0}, Lcom/coui/appcompat/tips/a;-><init>(Lcom/coui/appcompat/tips/COUIMarqueeTextView;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->fadingEdgeStrength:F

    return p0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 0

    iget p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->fadingEdgeStrength:F

    return p0
.end method

.method public final isMarqueeEnable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatTextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->stopRoll()V

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mStartScrollRunnable:Lcom/coui/appcompat/tips/COUIMarqueeTextView$StartScrollRunnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isActualMarqueeByMeasured:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_2

    iget v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledTextWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollRepeatCount:I

    if-lt v0, v2, :cond_2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollRepeatCount:I

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    iget v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mInitStringWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    iget-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    iget v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledTextWidth:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollRepeatCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScrollRepeatCount:I

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mIndividuallyAssembledText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mFinalDrawText:Ljava/lang/String;

    sget-object v2, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-super {p0, v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    iget-boolean v2, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isAllCharactersLtR:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    neg-float v0, v0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDraw: isMarqueeEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isActualMarqueeByMeasured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isActualMarqueeByMeasured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarqueeView"

    invoke-static {v1, v0}, Lcom/coui/appcompat/log/COUILog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setActualMarqueeByMeasured(Z)V

    iget-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setContent()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setActualMarqueeByMeasured(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setMarqueeEnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->setFadingEdgeStrength(F)V

    iput-boolean p1, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->isMarqueeEnable:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mOriginText:Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final stopRoll()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mContinueScrollingEnable:Z

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/tips/R$dimen;->coui_top_tips_scroll_text_start_location:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mCurrentScrollLocation:F

    iget-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScroller:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coui/appcompat/tips/COUIMarqueeTextView;->mScroller:Landroid/animation/ValueAnimator;

    return-void
.end method
