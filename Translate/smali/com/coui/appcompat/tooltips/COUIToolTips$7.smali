.class Lcom/coui/appcompat/tooltips/COUIToolTips$7;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/tooltips/COUIToolTips;->setBackground(IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field final synthetic val$bottomPadding:I

.field final synthetic val$endPadding:I

.field final synthetic val$radius:F

.field final synthetic val$startPadding:I

.field final synthetic val$topPadding:I


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tooltips/COUIToolTips;IIIIF)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    iput p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$startPadding:I

    iput p3, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$topPadding:I

    iput p4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$endPadding:I

    iput p5, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$bottomPadding:I

    iput p6, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$startPadding:I

    iget v2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$topPadding:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$endPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget v4, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$bottomPadding:I

    sub-int/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance p1, Lcom/oplus/graphics/OplusOutlineAdapter;

    invoke-direct {p1, p2, v1}, Lcom/oplus/graphics/OplusOutlineAdapter;-><init>(Landroid/graphics/Outline;I)V

    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$radius:F

    invoke-virtual {p1, v0, p0}, Lcom/oplus/graphics/OplusOutlineAdapter;->setSmoothRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/coui/appcompat/roundcorner/RoundCornerUtil;->getSmoothStyleType()I

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {p1, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    iget p2, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$radius:F

    iget-object p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->this$0:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-static {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->access$900(Lcom/coui/appcompat/tooltips/COUIToolTips;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/support/appcompat/R$dimen;->coui_round_corner_m_weight:I

    invoke-static {p0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getFloat(Landroid/content/Context;I)F

    move-result p0

    invoke-virtual {p1, v0, p2, p0}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(Landroid/graphics/Rect;FF)V

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/coui/appcompat/tooltips/COUIToolTips$7;->val$radius:F

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :goto_0
    return-void
.end method
