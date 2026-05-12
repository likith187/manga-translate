.class Lcom/coui/appcompat/button/COUIButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/button/COUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/button/COUIButton;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/button/COUIButton;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    new-instance v0, Lcom/oplus/graphics/OplusOutlineAdapter;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    invoke-static {p1, v0}, Lcom/coui/appcompat/button/COUIButton;->access$002(Lcom/coui/appcompat/button/COUIButton;Lcom/oplus/graphics/OplusOutlineAdapter;)Lcom/oplus/graphics/OplusOutlineAdapter;

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUIButton;->access$100(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p2}, Lcom/coui/appcompat/button/COUIButton;->access$200(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUIButton;->access$100(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p2}, Lcom/coui/appcompat/button/COUIButton;->access$200(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->top:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUIButton;->access$100(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p2}, Lcom/coui/appcompat/button/COUIButton;->access$200(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->right:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUIButton;->access$100(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p2}, Lcom/coui/appcompat/button/COUIButton;->access$200(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/RectF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p1, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p1}, Lcom/coui/appcompat/button/COUIButton;->access$000(Lcom/coui/appcompat/button/COUIButton;)Lcom/oplus/graphics/OplusOutlineAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-static {p2}, Lcom/coui/appcompat/button/COUIButton;->access$100(Lcom/coui/appcompat/button/COUIButton;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p0, p0, Lcom/coui/appcompat/button/COUIButton$1;->this$0:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {p0}, Lcom/coui/appcompat/button/COUIButton;->getDrawableRadius()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
