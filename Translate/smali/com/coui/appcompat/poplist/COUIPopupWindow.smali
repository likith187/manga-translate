.class public Lcom/coui/appcompat/poplist/COUIPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mIsOutLineBackgroundInPopupWindow:Z

.field private mSetElevationInPopupwindow:Z

.field protected mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Landroidx/appcompat/R$attr;->popupWindowStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    sget v0, Lcom/support/poplist/R$style;->Widget_COUI_PopupWindow:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 11
    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    .line 13
    new-instance p2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    .line 14
    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    .line 8
    new-instance p2, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-direct {p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;-><init>()V

    iput-object p2, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initPopupWindow(Landroid/content/Context;)V

    return-void
.end method

.method private initPopupWindow(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget v1, Lcom/support/poplist/R$attr;->couiPopupWindowBackground:I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initPopupWindowBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setElevation(F)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    sget p1, Lcom/support/poplist/R$style;->Animation_COUI_PopupListWindow:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method protected addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->addAnchorViewSpacingMap(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    return-void
.end method

.method protected addSpacingControlUtil(Landroid/content/Context;ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->addSpacingControlUtil(ILcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)V

    :cond_0
    return-void
.end method

.method protected getAnchorViewSpacing(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->isUtilMapInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getAnchorViewSpacing(Landroid/view/View;Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->isUtilMapInit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mWindowSpacingControlHelper:Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/poplist/WindowSpacingControlHelper;->getAnchorViewSpacing(Lcom/coui/appcompat/poplist/WindowSpacingControlHelper$AnchorViewTypeEnum;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected initElevationInPopupwindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/coui/appcompat/uiutil/ShadowUtils;->checkOPlusViewElevationSDK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/coui/appcompat/uiutil/ShadowUtils;->setElevationToView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/support/appcompat/R$dimen;->support_shadow_size_level_five:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setElevation(F)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mContext:Landroid/content/Context;

    sget v1, Lcom/support/poplist/R$color;->coui_popup_outline_spot_shadow_color:I

    invoke-static {p0, v1}, Lr/a;->c(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected initOutlineRoundRectBackground()V
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mIsOutLineBackgroundInPopupWindow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/poplist/COUIPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/poplist/COUIPopupWindow$1;-><init>(Lcom/coui/appcompat/poplist/COUIPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_0
    return-void
.end method

.method protected initPopupWindowBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/support/poplist/R$drawable;->coui_free_bottom_alert_poplist_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initOutlineRoundRectBackground()V

    invoke-virtual {p0}, Lcom/coui/appcompat/poplist/COUIPopupWindow;->initElevationInPopupwindow()V

    return-void
.end method

.method public setDismissTouchOutside(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    :goto_0
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method public setElevationInPopupwindow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow;->mSetElevationInPopupwindow:Z

    return-void
.end method
