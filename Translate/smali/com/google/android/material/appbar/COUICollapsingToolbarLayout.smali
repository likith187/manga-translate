.class public Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;
.super Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADE_IN_ALPHA_ANIMATION_DURATION:J = 0xc8L

.field private static final DEFAULT_FADE_MODE_EXPANSION_FRACTION:F = 0.81f

.field private static final DEFAULT_FADE_MODE_EXPANSION_FRACTION_ERROR:F = 0.02f

.field private static final DEFAULT_FADE_MODE_START_FRACTION:F = 1.0f

.field private static final DEFAULT_FADE_OUT_ALPHA_ANIMATION_DURATION:J = 0x96L

.field private static final DEFAULT_NORMAL_TEXT_COLOR_ALPHA:I = 0xff

.field private static final DEFAULT_SCALE_MODE_START_FRACTION:F = 0.5f

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final FADE_MODE_EXPANSION_FRACTION_ERROR_WITH_SEARCH:F = 0.0075f

.field private static final FADE_MODE_EXPANSION_FRACTION_WITH_SEARCH:F = 0.35f

.field private static final IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "COUICollapsingToolbar"

.field private static final TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedSubtitleMarginTopIfNotHidden:I

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mContentScrimDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private mCurrentBounds:Landroid/graphics/RectF;

.field private mExpandedBounds:Landroid/graphics/Rect;

.field private mFadeModeExpansionFraction:F

.field private mFadeModeExpansionFractionError:F

.field private mIconView:Landroid/view/View;

.field private mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIsAllowFadeInAnimation:Z

.field private mIsAllowFadeOutAnimation:Z

.field private mIsInsideSideNavigationBar:Z

.field private mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTitleTranslateOffset:I

.field private mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

.field private mToolbarNormalPaddingEnd:I

.field private mToolbarNormalPaddingStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/animation/COUIEaseInterpolator;

    invoke-direct {v0}, Lcom/coui/appcompat/animation/COUIEaseInterpolator;-><init>()V

    sput-object v0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedSubtitleMarginTopIfNotHidden:I

    .line 5
    iput p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbarNormalPaddingStart:I

    .line 6
    iput p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbarNormalPaddingEnd:I

    const v0, 0x3f4f5c29    # 0.81f

    .line 7
    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mFadeModeExpansionFraction:F

    const v0, 0x3ca3d70a    # 0.02f

    .line 8
    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mFadeModeExpansionFractionError:F

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    .line 12
    iput-boolean p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeInAnimation:Z

    .line 13
    iput-boolean p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeOutAnimation:Z

    .line 14
    iput-boolean p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsInsideSideNavigationBar:Z

    .line 15
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mContentScrimDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 16
    new-instance p3, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$1;-><init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V

    iput-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 17
    invoke-direct {p0, p2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->init(Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_appbar_subtitle_collapsed_margin_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedSubtitleMarginTopIfNotHidden:I

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_start:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbarNormalPaddingStart:I

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbarNormalPaddingEnd:I

    .line 21
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)Lcom/coui/appcompat/toolbar/COUIToolbar;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateTextLayoutIfNeed()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeInAnimation:Z

    return p1
.end method

.method static synthetic access$402(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeOutAnimation:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private addIconView()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    const v1, 0x800053

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private calculateCollapsedBound()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->isSubtitleHideEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/material/appbar/COUICollapsableAppBarLayout;->findSubtitleContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v2}, Lcom/google/android/material/internal/CollapsingTextHelper;->getCollapsedTextHeight()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedSubtitleMarginTopIfNotHidden:I

    add-int/2addr v0, p0

    sub-int/2addr v1, v0

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 2

    invoke-static {p0}, Landroidx/core/view/m0;->v(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->isRtlTextDirectionHeuristicsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z

    move-result v1

    :cond_1
    return v1
.end method

.method private createStaticLayout()Landroid/text/StaticLayout;
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "scale"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v0

    float-to-int v0, v4

    invoke-static {v1, v3, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setIsRtl(Z)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setIncludePad(Z)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->setMaxLines(I)Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/StaticLayoutBuilderCompat;->build()Landroid/text/StaticLayout;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/android/material/appbar/StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "COUICollapsingToolbar"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v2
.end method

.method private ensureToolbar()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/coui/appcompat/toolbar/COUIToolbar;

    iput-object v2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getReflectField error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUICollapsingToolbar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getScale()F
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "scale"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method private getTextHelperCollapsedBounds()Landroid/graphics/Rect;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "collapsedBounds"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextHelperCurrentBounds()Landroid/graphics/RectF;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "currentBounds"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/RectF;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextHelperExpandedBounds()Landroid/graphics/Rect;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "expandedBounds"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextLayout()Landroid/text/StaticLayout;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "textLayout"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTextPaint()Landroid/text/TextPaint;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v2, "textPaint"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextPaint;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->resetTextHelperInterpolator()V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/support/appcompat/R$bool;->coui_support_elegant_text_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/support/toolbar/R$styleable;->COUICollapsingToolbarLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget v0, Lcom/support/toolbar/R$styleable;->COUICollapsingToolbarLayout_iconView:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setIconView(I)V

    :cond_1
    return-void
.end method

.method private isTextDirectionHeuristicsIsRtl(Ljava/lang/CharSequence;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    sget-object p0, Lb0/d;->d:Lb0/c;

    goto :goto_0

    :cond_0
    sget-object p0, Lb0/d;->c:Lb0/c;

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lb0/c;->a(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private setReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {p0, p2, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setReflectField error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUICollapsingToolbar"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showCollapsedTitleAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getCOUITitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v0

    iget v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mFadeModeExpansionFraction:F

    cmpg-float v2, v0, v1

    if-gtz v2, :cond_1

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getCOUITitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->startFadeAnimation(ZLandroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mFadeModeExpansionFractionError:F

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getCOUITitleTextView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->startFadeAnimation(ZLandroid/widget/TextView;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private startFadeAnimation(ZLandroid/widget/TextView;)V
    .locals 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeOutAnimation:Z

    iget-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeInAnimation:Z

    if-nez v1, :cond_1

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeInAnimation:Z

    iget-boolean v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeOutAnimation:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    const-string v2, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v3, v4, v5

    aput v1, v4, v0

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_6

    const-wide/16 v0, 0xc8

    goto :goto_2

    :cond_6
    const-wide/16 v0, 0x96

    :goto_2
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object p2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;-><init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private translateTitleIfNeed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateCollapsedBound()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTitleTranslateOffset:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_1
    return-void
.end method

.method private updateFadeModeExpansionFraction()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    move-object v3, v0

    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/coui/appcompat/searchview/COUISearchBar;

    if-nez v4, :cond_1

    instance-of v3, v3, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    const v0, 0x3eb33333    # 0.35f

    goto :goto_2

    :cond_3
    const v0, 0x3f4f5c29    # 0.81f

    :goto_2
    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mFadeModeExpansionFraction:F

    if-eqz v1, :cond_4

    const v0, 0x3bf5c28f    # 0.0075f

    goto :goto_3

    :cond_4
    const v0, 0x3ca3d70a    # 0.02f

    :goto_3
    iput v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mFadeModeExpansionFractionError:F

    :cond_5
    return-void
.end method

.method private updateTextLayoutIfNeed()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMaxLines()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2025"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->createStaticLayout()Landroid/text/StaticLayout;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const-string v3, "textLayout"

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setReflectField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setScrimAlpha(I)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->showCollapsedTitleAnimation()V

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public fixCollapsingTitleAlpha()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    return-object p0
.end method

.method public getCollapsingTextLayout()Landroid/text/StaticLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    return-object p0
.end method

.method public getCollapsingTextPaint()Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    return-object p0
.end method

.method public isCollapsed()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isExpanded()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$OffsetUpdateListener;-><init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;)V

    iput-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mOnOffsetChangedListener:Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    invoke-static {p0}, Landroidx/core/view/m0;->f0(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateFadeModeExpansionFraction()V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->updateTextLayoutIfNeed()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextLayout()Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextHelperCurrentBounds()Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextHelperCollapsedBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getTextHelperExpandedBounds()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->translateTitleIfNeed()V

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getIsTitleCenterStyle()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    iget-object p2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedBounds(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p1}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_3
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mExpandedBounds:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0}, Lcom/google/android/material/internal/CollapsingTextHelper;->recalculate()V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->onMeasure(II)V

    iget-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsInsideSideNavigationBar:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbarNormalPaddingStart:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleMarginStart(I)V

    iget p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbarNormalPaddingEnd:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleMarginEnd(I)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isSmallScreen(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_start_compat:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_end_compat:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isMediumScreen(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_start_medium:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_end_medium:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coui/appcompat/uiutil/UIUtil;->getScreenHeightMetrics(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/coui/appcompat/grid/COUIResponsiveUtils;->isLargeScreen(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_start_expanded:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/support/toolbar/R$dimen;->coui_appbar_title_expanded_margin_end_expanded:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    move p2, p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleMarginStart(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setExpandedTitleMarginEnd(I)V

    :goto_1
    return-void
.end method

.method public resetTextHelperInterpolator()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    sget-object v1, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->TITLE_PATH_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {p0, v1}, Lcom/google/android/material/internal/CollapsingTextHelper;->setPositionInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(I)V

    .line 2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setCollapsedTitleTextColor(Landroid/content/res/ColorStateList;)V

    .line 4
    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setEditStyle(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setIsTitleCenterStyle(Z)V

    return-void
.end method

.method public setIconView(I)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->setIconView(Landroid/view/View;)V

    return-void
.end method

.method public setIconView(Landroid/view/View;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    goto :goto_0

    .line 6
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    .line 7
    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->addIconView()V

    :goto_0
    return-void
.end method

.method public setIsInsideSideNavigationBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsInsideSideNavigationBar:Z

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setIsTitleCenterStyle(Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitleCollapseMode(I)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mContentScrimDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->ensureToolbar()V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mToolbar:Lcom/coui/appcompat/toolbar/COUIToolbar;

    invoke-virtual {v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->getCOUITitleTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setCollapsedTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getCollapsingTextHelper()Lcom/google/android/material/internal/CollapsingTextHelper;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CollapsingTextHelper;->setFadeModeStartFraction(F)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeInAnimation:Z

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIsAllowFadeOutAnimation:Z

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconViewFirstLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method protected updateIconViewLocationIfNeed()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u2025"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\u2026"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->getScale()F

    move-result v4

    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v5, v3

    int-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTitleTranslateOffset:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    invoke-virtual {v7}, Lcom/google/android/material/internal/CollapsingTextHelper;->getExpansionFraction()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getExpandedTitleMarginEnd()I

    move-result v7

    sub-int/2addr v6, v7

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getExpandedTitleMarginStart()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    float-to-int v0, v0

    move v6, v0

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    :goto_3
    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mCurrentBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    goto :goto_3

    :goto_4
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_5
    iget-object v0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_9

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->mIconView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_6
    return-void
.end method
