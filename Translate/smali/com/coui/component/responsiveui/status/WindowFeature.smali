.class public final Lcom/coui/component/responsiveui/status/WindowFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/coui/component/responsiveui/status/WindowFeature;-><init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/layout/DisplayFeature;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/layout/FoldingFeature;",
            ">;)V"
        }
    .end annotation

    const-string v0, "displayFeatureList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foldingFeatureList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 5
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 6
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p2

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeature;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/coui/component/responsiveui/status/WindowFeature;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/coui/component/responsiveui/status/WindowFeature;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeature;->copy(Ljava/util/List;Ljava/util/List;)Lcom/coui/component/responsiveui/status/WindowFeature;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/layout/DisplayFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/layout/FoldingFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/coui/component/responsiveui/status/WindowFeature;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/layout/DisplayFeature;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Landroidx/window/layout/FoldingFeature;",
            ">;)",
            "Lcom/coui/component/responsiveui/status/WindowFeature;"
        }
    .end annotation

    const-string p0, "displayFeatureList"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "foldingFeatureList"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/coui/component/responsiveui/status/WindowFeature;

    invoke-direct {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeature;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/coui/component/responsiveui/status/WindowFeature;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/coui/component/responsiveui/status/WindowFeature;

    iget-object v1, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDisplayFeatureList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/layout/DisplayFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    return-object p0
.end method

.method public final getFoldingFeatureList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/window/layout/FoldingFeature;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowFeature { displayFeature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", foldingFeature = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeature;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
