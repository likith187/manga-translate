.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuControlRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuCenterLocateXRule()V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operation(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 3

    iget-object v0, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$10;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    add-int/2addr p0, v0

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
