.class Lcom/coui/appcompat/poplist/COUITouchListView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/poplist/COUITouchListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
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

    iput-object p1, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p3}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$000(Lcom/coui/appcompat/poplist/COUITouchListView;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p3}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$000(Lcom/coui/appcompat/poplist/COUITouchListView;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p2, p1

    :cond_0
    iget-object p0, p0, Lcom/coui/appcompat/poplist/COUITouchListView$1;->this$0:Lcom/coui/appcompat/poplist/COUITouchListView;

    invoke-static {p0, p2}, Lcom/coui/appcompat/poplist/COUITouchListView;->access$102(Lcom/coui/appcompat/poplist/COUITouchListView;I)I

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
