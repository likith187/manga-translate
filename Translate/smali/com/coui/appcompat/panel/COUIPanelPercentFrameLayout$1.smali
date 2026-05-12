.class Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->updateClipToOutline(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 9

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$000(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)V

    iget-object v0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$100(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {v1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$200(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v2, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int v6, p1, v0

    iget-object p1, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$300(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)F

    move-result v7

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$400(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)F

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(IIIIFF)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/oplus/graphics/OplusOutlineAdapter;

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v2

    invoke-direct {v1, p2, v2}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$300(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)F

    move-result p0

    invoke-virtual {v1, p2, p0}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int v6, p1, v0

    iget-object p0, p0, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout$1;->this$0:Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;

    invoke-static {p0}, Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;->access$300(Lcom/coui/appcompat/panel/COUIPanelPercentFrameLayout;)F

    move-result v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_2
    :goto_0
    return-void
.end method
