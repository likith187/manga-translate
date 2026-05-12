.class public Lcom/coui/appcompat/state/PaddingProcessor;
.super Lcom/coui/appcompat/state/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/state/PaddingProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/state/Processor<",
        "Ljava/lang/Integer;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_BOTTOM_PADDING:I = 0x2

.field public static final KEY_END_PADDING:I = 0x3

.field public static final KEY_START_PADDING:I = 0x1

.field public static final KEY_TOP_PADDING:I


# direct methods
.method private constructor <init>(Landroid/view/View;ILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/state/Processor;-><init>(Landroid/view/View;ILandroid/util/SparseArray;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ILandroid/util/SparseArray;Lcom/coui/appcompat/state/PaddingProcessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/state/PaddingProcessor;-><init>(Landroid/view/View;ILandroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public onProcess(Landroid/view/View;ILandroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result p0

    :goto_0
    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    :goto_2
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result p3

    :goto_3
    invoke-static {p1, p0, p2, p3, v0}, Landroidx/core/view/m0;->z0(Landroid/view/View;IIII)V

    return-void
.end method
