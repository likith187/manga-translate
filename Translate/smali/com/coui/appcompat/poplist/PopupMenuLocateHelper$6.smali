.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;
.super Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowBottomBarrierRule()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDisplayFrame:Landroid/graphics/Rect;

.field private final mDisplayFrameOutsets:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)V
    .locals 2

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->mDisplayFrame:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$600(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result p1

    invoke-direct {v0, v1, p1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->mDisplayFrameOutsets:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v1, v0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v2, v2, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v2, v2, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->mDisplayFrame:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getOutsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$6;->mDisplayFrameOutsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
