.class Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;
.super Landroidx/recyclerview/widget/RecyclerView$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mScrolled:Z

.field final synthetic this$0:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->this$0:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$u;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->mScrolled:Z

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$u;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    iget-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->mScrolled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->mScrolled:Z

    iget-object p0, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->this$0:Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;

    invoke-static {p0}, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;->access$000(Lcom/coui/appcompat/scroll/COUIFlingLocateHelper;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coui/appcompat/scroll/COUIFlingLocateHelper$1;->mScrolled:Z

    :cond_1
    return-void
.end method
