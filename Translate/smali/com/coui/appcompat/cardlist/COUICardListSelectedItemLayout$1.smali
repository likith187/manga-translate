.class Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;
.super Landroid/graphics/drawable/Drawable;
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

    iput-object p1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$000(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$200(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {v1}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$100(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {v0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$300(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Landroid/graphics/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$200(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout$1;->this$0:Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;

    invoke-static {p0}, Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;->access$100(Lcom/coui/appcompat/cardlist/COUICardListSelectedItemLayout;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
