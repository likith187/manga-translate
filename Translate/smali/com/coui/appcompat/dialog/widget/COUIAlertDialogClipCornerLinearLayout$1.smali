.class Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 8

    iget-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$000(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$100(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$200(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/oplus/graphics/OplusOutline;

    invoke-direct {v1, p2}, Lcom/oplus/graphics/OplusOutline;-><init>(Landroid/graphics/Outline;)V

    iget-object p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/support/appcompat/R$dimen;->coui_round_corner_xl_weight:I

    invoke-static {p2, v0}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->getFloat(Landroid/content/Context;I)F

    move-result v7

    iget-object p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object p2, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p2}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$300(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)I

    move-result p2

    int-to-float v6, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/oplus/graphics/OplusOutline;->setSmoothRoundRect(IIIIFF)V

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-object v0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {v0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$300(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)I

    move-result v0

    int-to-float v6, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getOutline: notUseRoundCornerWhenBlur"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mBlurBackgroundWindow="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$000(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mIsSupportRoundCornerWhenBlur="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$100(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mIsSupportSmoothRoundCorner="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p1}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$200(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)Z

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mRadius="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout$1;->this$0:Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;

    invoke-static {p0}, Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;->access$300(Lcom/coui/appcompat/dialog/widget/COUIAlertDialogClipCornerLinearLayout;)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "COUIAlertDialogClipCorner"

    invoke-static {p1, p0}, Lcom/coui/appcompat/log/COUILog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
