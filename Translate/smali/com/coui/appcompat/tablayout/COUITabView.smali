.class public Lcom/coui/appcompat/tablayout/COUITabView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

.field private mCustomIconView:Landroid/widget/ImageView;

.field private mCustomTextView:Landroid/widget/TextView;

.field protected mCustomView:Landroid/view/View;

.field private mDefaultMaxLines:I

.field private mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

.field private mIconView:Landroid/widget/ImageView;

.field private mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

.field private mSelectedByClick:Z

.field private mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

.field private mTab:Lcom/coui/appcompat/tablayout/COUITab;

.field private final mTabRect:Landroid/graphics/RectF;

.field private mTextFrame:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coui/appcompat/tablayout/COUITabLayout;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTabRect:Landroid/graphics/RectF;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mDefaultMaxLines:I

    iput-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p2, p2, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabBackgroundResId:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget p2, p2, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabBackgroundResId:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lt/h;->f(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/view/m0;->n0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingStart()I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {p2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingTop()I

    move-result p2

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v1}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingEnd()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabPaddingBottom()I

    move-result v2

    invoke-static {p0, p1, p2, v1, v2}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabView;->configStateEffectBackground()V

    return-void
.end method

.method public static synthetic a(Lcom/coui/appcompat/tablayout/COUITabView;)V
    .locals 0

    invoke-direct {p0}, Lcom/coui/appcompat/tablayout/COUITabView;->lambda$updateTextAndIcon$0()V

    return-void
.end method

.method private approximateLineWidth(Landroid/text/Layout;IF)F
    .locals 0

    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p0, p3

    return p0
.end method

.method private configStateEffectBackground()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setDefaultFocusHighlightEnabled(Z)V

    new-instance v2, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTabRect:Landroid/graphics/RectF;

    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUITabView;->dpToPx(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUITabView;->dpToPx(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->setMaskRect(Landroid/graphics/RectF;FF)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    invoke-virtual {v2, v1}, Lcom/coui/appcompat/state/COUIMaskEffectDrawable;->enableSelectedState(Z)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

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
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mMaskEffectDrawable:Lcom/coui/appcompat/state/COUIMaskEffectDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    aput-object v3, v4, v0

    new-instance v0, Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-direct {v0, v4}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-super {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    return-void
.end method

.method private synthetic lambda$updateTextAndIcon$0()V
    .locals 1

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method private updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coui/appcompat/tablayout/COUITab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz p1, :cond_8

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean v8, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    if-eqz v8, :cond_5

    iget-object v2, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    if-eqz v2, :cond_6

    iput-boolean v5, v7, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabAlreadyMeasure:Z

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_4

    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabStrip:Lcom/coui/appcompat/tablayout/COUISlidingTabStrip;

    new-instance v6, Lcom/coui/appcompat/tablayout/a;

    invoke-direct {v6, p0}, Lcom/coui/appcompat/tablayout/a;-><init>(Lcom/coui/appcompat/tablayout/COUITabView;)V

    invoke-virtual {v2, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_4
    iget v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mDefaultMaxLines:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_8
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_9

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUITabView;->dpToPx(I)I

    move-result v5

    :cond_9
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v5, v2, :cond_a

    iput v5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    :cond_a
    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, v3

    :goto_6
    invoke-static {p0, v1}, Landroidx/appcompat/widget/m0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method dpToPx(I)I
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getHintRedDot()Lcom/coui/appcompat/reddot/COUIHintRedDot;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    return-object p0
.end method

.method getSelectedByClick()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mSelectedByClick:Z

    return p0
.end method

.method public getTab()Lcom/coui/appcompat/tablayout/COUITab;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    return-object p0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class p0, Landroidx/appcompat/app/a$b;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroidx/appcompat/app/a$b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/appcompat/R$string;->coui_accessibility_unselected:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTabRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-boolean v2, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mEnableVibrator:Z

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/coui/appcompat/tablayout/COUITab;->mView:Lcom/coui/appcompat/tablayout/COUITabView;

    if-eq v0, p0, :cond_0

    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->setTouched(Z)V

    :cond_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public performClick()Z
    .locals 3

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iput-boolean v1, v0, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNeedAdjust:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mSelectedByClick:Z

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITab;->select()V

    iput-boolean v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mSelectedByClick:Z

    :cond_1
    return v0
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coui/appcompat/state/COUIStateEffectDrawable;->refresh(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabView;->setTab(Lcom/coui/appcompat/tablayout/COUITab;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/tablayout/COUITabView;->setSelected(Z)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mStateEffectBackground:Lcom/coui/appcompat/state/COUIStateEffectDrawable;

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

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    :cond_3
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_4
    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_6
    return-void
.end method

.method setTab(Lcom/coui/appcompat/tablayout/COUITab;)V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 10

    iget-object v0, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTab:Lcom/coui/appcompat/tablayout/COUITab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->getCustomView()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, -0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, p0, :cond_2

    if-eqz v5, :cond_1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    const/16 v6, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v5, 0x1020014

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    invoke-static {v5}, Landroidx/core/widget/j;->d(Landroid/widget/TextView;)I

    move-result v5

    iput v5, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mDefaultMaxLines:I

    :cond_5
    const v5, 0x1020006

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomIconView:Landroid/widget/ImageView;

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_7

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    :cond_7
    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomTextView:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomIconView:Landroid/widget/ImageView;

    :goto_1
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomView:Landroid/view/View;

    const/4 v5, 0x1

    if-nez v2, :cond_f

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcom/support/tablayout/R$layout;->coui_tab_layout_icon:I

    invoke-virtual {v2, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    :cond_8
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-nez v2, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v6, Lcom/support/tablayout/R$layout;->coui_tab_layout_text:I

    invoke-virtual {v2, v6, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget v7, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingStart:I

    iget v8, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingTop:I

    iget v9, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingEnd:I

    iget v6, v6, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabPaddingBottom:I

    invoke-static {v2, v7, v8, v9, v6}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    invoke-static {v2}, Landroidx/core/widget/j;->d(Landroid/widget/TextView;)I

    move-result v2

    iput v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mDefaultMaxLines:I

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    invoke-static {v2, v6}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->adaptBoldAndMediumFont(Landroid/widget/TextView;Z)V

    :cond_a
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/coui/appcompat/reddot/COUIHintRedDot;->saveMemento()Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;

    move-result-object v1

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_b
    new-instance v2, Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/coui/appcompat/reddot/COUIHintRedDot;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mHintRedDot:Lcom/coui/appcompat/reddot/COUIHintRedDot;

    invoke-virtual {v1, v2}, Lcom/coui/appcompat/reddot/COUIHintRedDotMemento;->applyTo(Lcom/coui/appcompat/reddot/COUIHintRedDot;)V

    :cond_c
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    invoke-virtual {v2}, Lcom/coui/appcompat/tablayout/COUITabLayout;->getTabTextSize()F

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->mSelectedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v2, v2, Lcom/coui/appcompat/tablayout/COUITabLayout;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_3
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCOUITabLayout:Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v1, v1, Lcom/coui/appcompat/tablayout/COUITabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_e
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/tablayout/COUITabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_4

    :cond_f
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/support/tablayout/R$layout;->coui_tab_layout_text:I

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mTextFrame:Landroid/widget/TextView;

    :cond_10
    iget-object v1, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomTextView:Landroid/widget/TextView;

    if-nez v1, :cond_11

    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, p0, Lcom/coui/appcompat/tablayout/COUITabView;->mCustomIconView:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/coui/appcompat/tablayout/COUITabView;->updateTextAndIcon(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_12
    :goto_4
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_13

    move v4, v5

    :cond_13
    invoke-virtual {p0, v4}, Lcom/coui/appcompat/tablayout/COUITabView;->setSelected(Z)V

    return-void
.end method
