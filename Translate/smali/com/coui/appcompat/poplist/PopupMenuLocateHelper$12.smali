.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/poplist/PopupMenuControlRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupMainMenuLocateXRule()V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private locateX()I
    .locals 6

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/appcompat/poplist/PopupMenuDomain;

    move-result-object v0

    iget-object v0, v0, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    :cond_2
    invoke-static {}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainMenuLocateXRule mAnchor [left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/appcompat/poplist/PopupMenuDomain;

    move-result-object v2

    iget-object v2, v2, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " top "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v3}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/appcompat/poplist/PopupMenuDomain;

    move-result-object v3

    iget-object v3, v3, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " right "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v4}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/appcompat/poplist/PopupMenuDomain;

    move-result-object v4

    iget-object v4, v4, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bottom "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/appcompat/poplist/PopupMenuDomain;

    move-result-object v5

    iget-object v5, v5, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mAnchor:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] mMainMenuWidth "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mAvailableBounds [left "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v5}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1100(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] result x = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PopupMenuLocateHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method


# virtual methods
.method public operation(Lcom/coui/appcompat/poplist/PopupMenuDomain;)V
    .locals 3

    invoke-direct {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->locateX()I

    move-result v0

    iget-object v1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$12;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$1000(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p0

    add-int/2addr p0, v0

    iget-object p1, p1, Lcom/coui/appcompat/poplist/PopupMenuDomain;->mMainMenu:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v0, v2, p0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
