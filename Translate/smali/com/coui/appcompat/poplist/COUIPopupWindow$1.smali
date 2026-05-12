.class Lcom/coui/appcompat/poplist/COUIPopupWindow$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUIPopupWindow;->initOutlineRoundRectBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUIPopupWindow;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUIPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUIPopupWindow$1;->this$0:Lcom/coui/appcompat/poplist/COUIPopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/support/appcompat/R$attr;->couiRoundCornerM:I

    invoke-static {p0, p1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getAttrDimens(Landroid/content/Context;I)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
