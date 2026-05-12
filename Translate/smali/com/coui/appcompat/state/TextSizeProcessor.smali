.class public Lcom/coui/appcompat/state/TextSizeProcessor;
.super Lcom/coui/appcompat/state/Processor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/state/TextSizeProcessor$Builder;,
        Lcom/coui/appcompat/state/TextSizeProcessor$TypedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/state/Processor<",
        "Ljava/lang/Float;",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_SIZE_UNIT:I = 0x2

.field public static final KEY_TEXT_SIZE:I = 0x1


# direct methods
.method private constructor <init>(Landroid/widget/TextView;ILandroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/state/Processor;-><init>(Landroid/view/View;ILandroid/util/SparseArray;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;ILandroid/util/SparseArray;Lcom/coui/appcompat/state/TextSizeProcessor$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/state/TextSizeProcessor;-><init>(Landroid/widget/TextView;ILandroid/util/SparseArray;)V

    return-void
.end method

.method private getTypedValueByKeySizeUnit(F)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/high16 p0, 0x40000000    # 2.0f

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method


# virtual methods
.method public bridge synthetic onProcess(Landroid/view/View;ILandroid/util/SparseArray;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/coui/appcompat/state/TextSizeProcessor;->onProcess(Landroid/widget/TextView;ILandroid/util/SparseArray;)V

    return-void
.end method

.method public onProcess(Landroid/widget/TextView;ILandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x2

    .line 2
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-direct {p0, p2}, Lcom/coui/appcompat/state/TextSizeProcessor;->getTypedValueByKeySizeUnit(F)I

    move-result p2

    :cond_0
    const/4 p0, 0x1

    .line 4
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    return-void
.end method
