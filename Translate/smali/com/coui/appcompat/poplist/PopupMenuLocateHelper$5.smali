.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;
.super Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowCutoutBarrierRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDisplayFrame:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v3}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_5
    return v2
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/view/DisplayCutout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$500(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v4, v4, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v4}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v4, v4, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v5, v5, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v4, v4, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v3, v3, v1, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v4}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v4, v4, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_0

    :cond_5
    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$5;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 0

    invoke-static {}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$100()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
