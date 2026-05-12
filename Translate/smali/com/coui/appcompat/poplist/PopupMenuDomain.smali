.class Lcom/coui/appcompat/poplist/PopupMenuDomain;
.super Lcom/coui/appcompat/uiutil/Domain;
.source "SourceFile"


# static fields
.field private static final COUI_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PopupMenuDomain"


# instance fields
.field mAnchor:Landroid/graphics/Rect;

.field mAnchorOutsets:Landroid/graphics/Rect;

.field mGlobalOffsetX:I

.field mGlobalOffsetY:I

.field mMainMenu:Landroid/graphics/Rect;

.field mMainMenuCenterAlign:Z

.field mMainMenuRelocated:Landroid/graphics/Rect;

.field mPopup:Landroid/graphics/Rect;

.field mSubMenu:Landroid/graphics/Rect;

.field mSubMenuAnchor:Landroid/graphics/Rect;

.field mSubMenuAnchorIsFirstItem:Z

.field mWindow:Landroid/graphics/Rect;

.field mWindowBarriers:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/coui/appcompat/log/COUILog;->LOG_DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "PopupMenuDomain"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coui/appcompat/log/COUILog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->COUI_DEBUG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coui/appcompat/uiutil/Domain;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mPopup:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchorOutsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mGlobalOffsetX:I

    iput v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mGlobalOffsetY:I

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchorIsFirstItem:Z

    iput-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuCenterAlign:Z

    return-void
.end method


# virtual methods
.method dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWindow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAnchor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAnchorOutsets = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchorOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mWindowBarriers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mMainMenu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mMainMenuRelocated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSubMenu = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mSubMenuAnchor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mGlobalOffsetX = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mGlobalOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mGlobalOffsetY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mGlobalOffsetY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PopupMenuDomain"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getAnchorRealRect(Landroid/graphics/Rect;)V
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchorOutsets:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method getAvailableRect(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v2

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->COUI_DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PopupMenuDomain getAvailableRect mWindow.left "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindowBarriers.left "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindow.top "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindowBarriers.top "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindow.right "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindowBarriers.right "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindow.bottom "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mWindowBarriers.bottom "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupMenuDomain"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method getAvailableRectHeight()I
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method getAvailableRectWidth()I
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method getMainMenuEnterPivotX()I
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuCenterAlign:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method getMainMenuEnterPivotY()I
    .locals 2

    iget-boolean v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuCenterAlign:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    if-le v0, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method getSubMenuEnterPivotX()I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    if-le v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method getSubMenuEnterPivotY()I
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0
.end method

.method reset()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindow:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mPopup:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchorOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mWindowBarriers:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenuAnchor:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method
