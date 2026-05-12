.class public Lcom/coui/appcompat/state/SizeProcessor;
.super Lcom/coui/appcompat/state/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/state/SizeProcessor$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/state/Processor<",
        "Ljava/lang/Object;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_HEIGHT:I = 0x1

.field public static final KEY_WEIGHT:I = 0x2

.field public static final KEY_WIDTH:I


# direct methods
.method private constructor <init>(Landroid/view/View;ILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/state/Processor;-><init>(Landroid/view/View;ILandroid/util/SparseArray;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;ILandroid/util/SparseArray;Lcom/coui/appcompat/state/SizeProcessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/state/SizeProcessor;-><init>(Landroid/view/View;ILandroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public onProcess(Landroid/view/View;ILandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    const/4 p2, 0x2

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_3
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    :goto_0
    return-void
.end method
