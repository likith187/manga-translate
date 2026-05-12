.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;
.super Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupWindowLeftBarrierRule()V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->mDisplayFrame:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$200(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Lcom/coui/component/responsiveui/ResponsiveUIModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coui/component/responsiveui/ResponsiveUIModel;->margin()I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$300(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    iget-object v2, v2, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->mApplicationWindow:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$2;->mDisplayFrame:Landroid/graphics/Rect;

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
