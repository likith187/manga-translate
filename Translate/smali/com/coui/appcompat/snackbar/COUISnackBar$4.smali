.class Lcom/coui/appcompat/snackbar/COUISnackBar$4;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/snackbar/COUISnackBar;->initCOUISnackBar(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

.field final synthetic val$multipleRowsNormalRadius:I

.field final synthetic val$multipleRowsOs15Radius:I

.field final synthetic val$multipleRowsOs15Weight:F

.field final synthetic val$radius:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/snackbar/COUISnackBar;IIFI)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    iput p2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsNormalRadius:I

    iput p3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsOs15Radius:I

    iput p4, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsOs15Weight:F

    iput p5, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$radius:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 10

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/oplus/graphics/OplusOutlineAdapter;

    invoke-direct {v2, p2, v3}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {v3}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$400(Lcom/coui/appcompat/snackbar/COUISnackBar;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsNormalRadius:I

    int-to-float v0, v0

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {v2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$400(Lcom/coui/appcompat/snackbar/COUISnackBar;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v3, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v3, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    iget v1, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsOs15Radius:I

    int-to-float v8, v1

    iget v9, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsOs15Weight:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(IIIIFF)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$radius:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v1, v2

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->this$0:Lcom/coui/appcompat/snackbar/COUISnackBar;

    invoke-static {v2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->access$400(Lcom/coui/appcompat/snackbar/COUISnackBar;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$radius:I

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/coui/appcompat/snackbar/COUISnackBar$4;->val$multipleRowsNormalRadius:I

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v1, v2

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_2
    return-void
.end method
