.class public final Lkotlinx/serialization/internal/ArrayListSerializer;
.super Lkotlinx/serialization/internal/CollectionSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/serialization/internal/CollectionSerializer<",
        "TE;",
        "Ljava/util/List<",
        "+TE;>;",
        "Ljava/util/ArrayList<",
        "TE;>;>;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/InternalSerializationApi;
.end annotation


# instance fields
.field private final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/CollectionSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListClassDesc;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/ArrayListClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/ArrayListSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/ArrayListSerializer;->builder()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected builder()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ArrayListSerializer;->builderSize(Ljava/util/ArrayList;)I

    move-result p0

    return p0
.end method

.method protected builderSize(Ljava/util/ArrayList;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;)I"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/ArrayListSerializer;->checkCapacity(Ljava/util/ArrayList;I)V

    return-void
.end method

.method protected checkCapacity(Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;I)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/ArrayListSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/ArrayListSerializer;->insert(Ljava/util/ArrayList;ILjava/lang/Object;)V

    return-void
.end method

.method protected insert(Ljava/util/ArrayList;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;ITE;)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ArrayListSerializer;->toBuilder(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, p1, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ArrayListSerializer;->toResult(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected toResult(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
