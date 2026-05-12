.class Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->updateBounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$300(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Lcom/coui/appcompat/searchview/COUISearchViewAnimate$SearchFunctionalButton;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v2}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$400(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Float;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {v1}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget-object p0, p0, Lcom/coui/appcompat/searchview/COUISearchViewAnimate$3;->this$0:Lcom/coui/appcompat/searchview/COUISearchViewAnimate;

    invoke-static {p0}, Lcom/coui/appcompat/searchview/COUISearchViewAnimate;->access$200(Lcom/coui/appcompat/searchview/COUISearchViewAnimate;)Landroid/graphics/Rect;

    move-result-object p0

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
