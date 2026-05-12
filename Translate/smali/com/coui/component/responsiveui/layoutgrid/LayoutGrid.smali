.class final Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[[I

.field private c:I

.field private d:[I


# direct methods
.method public constructor <init>(I[[II[I)V
    .locals 1

    const-string v0, "columnsWidth"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "margin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    iput-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    iput p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    iput-object p4, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;I[[II[IILjava/lang/Object;)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->copy(I[[II[I)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    return p0
.end method

.method public final component2()[[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    return p0
.end method

.method public final component4()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-object p0
.end method

.method public final copy(I[[II[I)Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;
    .locals 0

    const-string p0, "columnsWidth"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "margin"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;-><init>(I[[II[I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-class v2, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.coui.component.responsiveui.layoutgrid.LayoutGrid"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;

    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    iget v3, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    iget-object v3, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    invoke-static {v1, v3}, Lkotlin/collections/i;->d([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    iget v3, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    iget-object p1, p1, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getColumnCount()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    return p0
.end method

.method public final getColumnsWidth()[[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    return-object p0
.end method

.method public final getGutter()I
    .locals 0

    iget p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    return p0
.end method

.method public final getMargin()[I
    .locals 0

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    invoke-static {v1}, Lkotlin/collections/i;->b([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setColumnCount(I)V
    .locals 0

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    return-void
.end method

.method public final setColumnsWidth([[I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    return-void
.end method

.method public final setGutter(I)V
    .locals 0

    iput p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    return-void
.end method

.method public final setMargin([I)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LayoutGrid] columnCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gutter = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->c:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "margins = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->d:[I

    invoke-static {v3}, Lkotlin/collections/i;->e([I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "columnWidth = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/coui/component/responsiveui/layoutgrid/LayoutGrid;->b:[[I

    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    invoke-static {v4}, Lkotlin/collections/i;->e([I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "value"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/r;->Q(Ljava/lang/CharSequence;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0}, Lkotlin/text/r;->Q(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "value.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
