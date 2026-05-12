.class public Lcom/coui/appcompat/state/COUIViewStateController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/state/IViewStateController;
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field private mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addViewStateProcessor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 6
    new-array v0, v0, [Lcom/coui/appcompat/state/Processor;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/coui/appcompat/state/Processor;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/state/COUIViewStateController;->addViewStateProcessor([Lcom/coui/appcompat/state/Processor;)V

    return-void
.end method

.method public varargs addViewStateProcessor([Lcom/coui/appcompat/state/Processor;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    iget-object v3, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/coui/appcompat/state/Processor;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    .line 3
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 4
    iget-object v4, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/coui/appcompat/state/Processor;->getState()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/coui/appcompat/state/Processor;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getProcessView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getProcessorMap()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/coui/appcompat/state/Processor;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/state/Processor;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/coui/appcompat/state/Processor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onViewStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/state/Processor;

    invoke-virtual {v0}, Lcom/coui/appcompat/state/Processor;->isLoadedView()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/state/Processor;->process()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/coui/appcompat/state/COUIViewStateController;->getProcessView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/state/Processor;->process(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coui/appcompat/state/Processor;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/coui/appcompat/state/Processor;->release()V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/coui/appcompat/state/COUIViewStateController;->mSparseArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
