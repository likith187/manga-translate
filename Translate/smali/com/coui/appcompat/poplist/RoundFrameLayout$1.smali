.class Lcom/coui/appcompat/poplist/RoundFrameLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/RoundFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/RoundFrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$000(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$100(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setAlpha(F)V

    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$200(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$000(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$200(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$300(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$300(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$300(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->right:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v3}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$300(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$400(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/oplus/graphics/OplusOutlineAdapter;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$200(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$500(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$600(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {p1, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    iget-object p2, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$200(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object p2

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$700(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result v0

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$800(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result p0

    invoke-virtual {p1, p2, v0, p0}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(Landroid/graphics/Rect;FF)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$200(Lcom/coui/appcompat/poplist/RoundFrameLayout;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    invoke-static {v0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$700(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    iget-object p0, p0, Lcom/coui/appcompat/poplist/RoundFrameLayout$1;->this$0:Lcom/coui/appcompat/poplist/RoundFrameLayout;

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$700(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result p0

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/coui/appcompat/poplist/RoundFrameLayout;->access$500(Lcom/coui/appcompat/poplist/RoundFrameLayout;)F

    move-result p0

    :goto_1
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_2
    return-void
.end method
