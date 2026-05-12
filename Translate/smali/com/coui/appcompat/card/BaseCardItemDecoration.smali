.class public Lcom/coui/appcompat/card/BaseCardItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$o;
.source "SourceFile"


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$o;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/card/BaseCardItemDecoration;->appContext:Landroid/content/Context;

    return-void
.end method

.method private final getDimenPx(Landroid/content/Context;I)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected final getDimenPx(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coui/appcompat/card/BaseCardItemDecoration;->appContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/coui/appcompat/card/BaseCardItemDecoration;->getDimenPx(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method protected final setCardColumnMargin(Landroid/graphics/Rect;Lcom/coui/appcompat/card/CardMargin;Lcom/coui/appcompat/card/CardPosition;)V
    .locals 0

    const-string p0, "outRect"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cardMargin"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cardPosition"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardMargin;->getOtherRowTop()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardMargin;->getFirstColumnInner()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardMargin;->getFirstColumnInner()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3}, Lcom/coui/appcompat/card/CardPosition;->isFirstColumn()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardMargin;->getFirstColumnOuter()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    invoke-virtual {p3}, Lcom/coui/appcompat/card/CardPosition;->isLastColumn()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardMargin;->getFirstColumnOuter()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_1
    invoke-virtual {p3}, Lcom/coui/appcompat/card/CardPosition;->isFirstRow()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/coui/appcompat/card/CardMargin;->getFirstRowTop()I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    return-void
.end method
