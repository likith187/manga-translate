.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuControlRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuRelocateRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOffsetX(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I
    .locals 2

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    if-le v0, p1, :cond_1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private getOffsetY(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I
    .locals 2

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1700(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1700(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    sub-int/2addr v0, p0

    iget-object p0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public operation(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->getOffsetX(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$14;->getOffsetY(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I

    move-result p0

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method
