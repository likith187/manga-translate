.class Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->initBubbleStyle(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;->this$0:Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 3

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl$1;->this$0:Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;->access$800(Lcom/coui/appcompat/tooltips/COUIImageBubbleStyleImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/support/tips/R$dimen;->coui_tooltips_imageview_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
