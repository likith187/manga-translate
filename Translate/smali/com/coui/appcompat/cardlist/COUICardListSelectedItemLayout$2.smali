.class Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$2;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$2;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$300(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Landroid/graphics/Path;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$2;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$402(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;Z)Z

    :cond_0
    return-void
.end method
