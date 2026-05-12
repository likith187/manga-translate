.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuControlRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuLocateYRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

.field y:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->y:I

    return-void
.end method

.method private locateY(Landroid/graphics/Rect;)V
    .locals 4

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->tryLocateAboveAnchor(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->tryLocateBelowAnchor(I)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->tryLocateBelowAnchor(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->tryLocateAboveAnchor(I)Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMainMenuLocateYRule anchorBounds [left "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " top "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " right "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " bottom "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] mMainMenuHeight "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mAvailableBounds [left "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] result y = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->y:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PopupMenuLocateHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private tryLocateAboveAnchor(I)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v0

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->y:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private tryLocateBelowAnchor(I)Z
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    if-lt v0, v1, :cond_0

    iput p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->y:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public operation(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/poplist/PopupMenuDomain;->getAnchorRealRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->y:I

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->locateY(Landroid/graphics/Rect;)V

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->y:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$13;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    add-int/2addr p0, v1

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
