.class Lcom/coui/appcompat/poplist/COUITouchListView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUITouchListView;->initScrollListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/poplist/COUITouchListView;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/poplist/COUITouchListView;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1, p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$500(Lcom/coui/appcompat/poplist/COUITouchListView;I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$300(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$200(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p2

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$200(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p2

    if-le p2, p1, :cond_1

    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$600(Lcom/coui/appcompat/poplist/COUITouchListView;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$700(Lcom/coui/appcompat/poplist/COUITouchListView;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p0, p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$202(Lcom/coui/appcompat/poplist/COUITouchListView;I)I

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$400(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p1

    if-le p2, p1, :cond_4

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$600(Lcom/coui/appcompat/poplist/COUITouchListView;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$700(Lcom/coui/appcompat/poplist/COUITouchListView;)V

    :goto_1
    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$300(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p3

    invoke-static {p1, p3}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$202(Lcom/coui/appcompat/poplist/COUITouchListView;I)I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p0, p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$402(Lcom/coui/appcompat/poplist/COUITouchListView;I)I

    :goto_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$300(Lcom/coui/appcompat/poplist/COUITouchListView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$202(Lcom/coui/appcompat/poplist/COUITouchListView;I)I

    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$2;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result p1

    invoke-static {p0, p1}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$402(Lcom/coui/appcompat/poplist/COUITouchListView;I)I

    :cond_0
    return-void
.end method
