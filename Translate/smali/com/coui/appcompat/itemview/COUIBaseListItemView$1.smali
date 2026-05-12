.class Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/itemview/COUIBaseListItemView;->setSummaryClickSpan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    iget-object v0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {v0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {v1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    iget-object v3, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {v3}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-le p2, v0, :cond_1

    if-lt p2, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v2

    :goto_1
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {p1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setPressed(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {p0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object p0

    const-wide/16 p1, 0x46

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->postInvalidateDelayed(J)V

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    return v3

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {p1}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object p0, p0, Lcom/coui/appcompat/itemview/COUIBaseListItemView$1;->this$0:Lcom/coui/appcompat/itemview/COUIBaseListItemView;

    invoke-static {p0}, Lcom/coui/appcompat/itemview/COUIBaseListItemView;->access$000(Lcom/coui/appcompat/itemview/COUIBaseListItemView;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :goto_2
    return v3
.end method
