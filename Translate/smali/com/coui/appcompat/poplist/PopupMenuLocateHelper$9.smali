.class Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$9;
.super Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->setupSubmenuAnchorConfigRule()V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$9;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$DefaultPopupMenuConfigRule;-><init>(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$1;)V

    return-void
.end method


# virtual methods
.method public getBarrierDirection()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getDisplayFrame()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper$9;->this$0:Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;->access$900(Lcom/coui/appcompat/poplist/PopupMenuLocateHelper;)Landroid/graphics/Rect;

    move-result-object p0

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

    const/4 p0, 0x3

    return p0
.end method
