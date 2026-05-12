.class final Lkotlinx/serialization/json/internal/JsonTreeListEncoder;
.super Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;
.source "SourceFile"


# instance fields
.field private final array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lkotlinx/serialization/json/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/Json;Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nodeConsumer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;-><init>(Lkotlinx/serialization/json/Json;Lw8/l;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonTreeListEncoder;->array:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected elementName(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .locals 0

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCurrent()Lkotlinx/serialization/json/JsonElement;
    .locals 1

    new-instance v0, Lkotlinx/serialization/json/JsonArray;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeListEncoder;->array:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonArray;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public putElement(Ljava/lang/String;Lkotlinx/serialization/json/JsonElement;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonTreeListEncoder;->array:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method
