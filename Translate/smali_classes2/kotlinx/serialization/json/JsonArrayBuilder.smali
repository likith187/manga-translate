.class public final Lkotlinx/serialization/json/JsonArrayBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlinx/serialization/json/JsonDslMarker;
.end annotation


# instance fields
.field private final content:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Lkotlinx/serialization/json/JsonElement;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final build()Lkotlinx/serialization/json/JsonArray;
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonArray;

    iget-object p0, p0, Lkotlinx/serialization/json/JsonArrayBuilder;->content:Ljava/util/List;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method
