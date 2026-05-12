.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuControlRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupSubMenuLocateRule()V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOffsetX(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_1

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    :goto_0
    sub-int/2addr p1, p0

    return p1

    :cond_1
    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_3

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    goto :goto_0

    :cond_3
    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    goto :goto_0
.end method

.method private getOffsetY(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->isCurrentContainerSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->getSubMenuAnchorTopAfterMainMenuRelocated(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$2200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    :goto_0
    sub-int/2addr p1, p0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v0

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-ge p1, v0, :cond_2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    goto :goto_0
.end method

.method private getSubMenuAnchorTopAfterMainMenuRelocated(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenuRelocated:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    int-to-float p0, p0

    mul-float/2addr v0, p0

    add-float/2addr p1, v0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public operation(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 4

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1800(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->getOffsetX(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$15;->getOffsetY(Lcom/coui/appcompat/poplist/PopupMenuDomain;)I

    move-result p0

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mSubMenu:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method
