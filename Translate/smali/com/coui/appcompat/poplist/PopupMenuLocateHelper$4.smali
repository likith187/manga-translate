.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;
.super Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowTopBarrierRule()V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->mDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v1, v1, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v3}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$400(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$4;->mDisplayFrame:Landroid/graphics/Rect;

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
