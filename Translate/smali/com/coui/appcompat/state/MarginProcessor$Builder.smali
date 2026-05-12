.class public Lcom/coui/appcompat/state/MarginProcessor$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/state/MarginProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mSparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mState:I

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mSparseArray:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public create()Lcom/coui/appcompat/state/MarginProcessor;
    .locals 4

    new-instance v0, Lcom/coui/appcompat/state/MarginProcessor;

    iget-object v1, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mView:Landroid/view/View;

    iget v2, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mState:I

    iget-object p0, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mSparseArray:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/coui/appcompat/state/MarginProcessor;-><init>(Landroid/view/View;ILandroid/util/SparseArray;Lcom/coui/appcompat/state/MarginProcessor$1;)V

    return-object v0
.end method

.method public setMarginBottom(I)Lcom/coui/appcompat/state/MarginProcessor$Builder;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMarginEnd(I)Lcom/coui/appcompat/state/MarginProcessor$Builder;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMarginStart(I)Lcom/coui/appcompat/state/MarginProcessor$Builder;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public setMarginTop(I)Lcom/coui/appcompat/state/MarginProcessor$Builder;
    .locals 2

    iget-object v0, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mSparseArray:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public with(Landroid/view/View;)Lcom/coui/appcompat/state/MarginProcessor$Builder;
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/state/MarginProcessor$Builder;->mView:Landroid/view/View;

    return-object p0
.end method
