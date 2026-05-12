.class Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;
.super Landroidx/recyclerview/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$PagerAdapterObserver;->this$0:Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    invoke-virtual {p0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->populateTabsFromPagerAdapter()V

    return-void
.end method
