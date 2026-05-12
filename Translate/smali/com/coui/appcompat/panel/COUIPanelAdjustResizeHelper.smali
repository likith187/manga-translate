.class public Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;

    invoke-direct {v0}, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelperAfterR;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    return-void
.end method


# virtual methods
.method public adjustResize(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->adjustResize(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/WindowInsets;Landroid/view/View;Z)V

    return-void
.end method

.method public getMarginBottomValue()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->getMarginBottomValue()I

    move-result p0

    return p0
.end method

.method public getPaddingBottomOffset()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->getPaddingBottomOffset()I

    move-result p0

    return p0
.end method

.method public getTranslateOffset()F
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->getTranslateOffset()F

    move-result p0

    return p0
.end method

.method public getWindowType()I
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->getWindowType()I

    move-result p0

    return p0
.end method

.method public recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->recoveryScrollingParentViewPaddingBottom(Lcom/coui/appcompat/panel/COUIPanelContentLayout;)V

    return-void
.end method

.method public releaseData()Z
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->releaseData()Z

    move-result p0

    return p0
.end method

.method public resetInnerStatus()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->resetInnerStatus()V

    return-void
.end method

.method public setIgnoreHideKeyboardAnim(Z)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->setIgnoreHideKeyboardAnim(Z)V

    return-void
.end method

.method public setWindowType(I)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelAdjustResizeHelper;->mAdjustHelper:Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIAbsPanelAdjustResizeHelper;->setWindowType(I)V

    return-void
.end method
