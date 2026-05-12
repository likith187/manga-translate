.class public final Lkotlinx/serialization/internal/LinkedHashSetSerializer;
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
        "Ljava/util/Set<",
        "+TE;>;",
        "Ljava/util/LinkedHashSet<",
        "TE;>;>;"
    }
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

    const-string v0, "eSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/CollectionSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashSetClassDesc;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/internal/LinkedHashSetClassDesc;-><init>(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    iput-object v0, p0, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public bridge synthetic builder()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->builder()Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method protected builder()Ljava/util/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public bridge synthetic builderSize(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->builderSize(Ljava/util/LinkedHashSet;)I

    move-result p0

    return p0
.end method

.method protected builderSize(Ljava/util/LinkedHashSet;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "TE;>;)I"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic checkCapacity(Ljava/lang/Object;I)V
    .locals 0

    .line 2
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->checkCapacity(Ljava/util/LinkedHashSet;I)V

    return-void
.end method

.method protected checkCapacity(Ljava/util/LinkedHashSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->insert(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V

    return-void
.end method

.method protected insert(Ljava/util/LinkedHashSet;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "TE;>;ITE;)V"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->toBuilder(Ljava/util/Set;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder(Ljava/util/Set;)Ljava/util/LinkedHashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p0, p1, Ljava/util/LinkedHashSet;

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Ljava/util/LinkedHashSet;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    :cond_1
    return-object p0
.end method

.method public bridge synthetic toResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;->toResult(Ljava/util/LinkedHashSet;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method protected toResult(Ljava/util/LinkedHashSet;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 1
    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
