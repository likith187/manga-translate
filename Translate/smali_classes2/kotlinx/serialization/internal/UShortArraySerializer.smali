.class public final Lkotlinx/serialization/internal/UShortArraySerializer;
.super Lkotlinx/serialization/internal/PrimitiveArraySerializer;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArraySerializer<",
        "Ln8/e0;",
        "Ln8/f0;",
        "Lkotlinx/serialization/internal/UShortArrayBuilder;",
        ">;",
        "Lkotlinx/serialization/KSerializer<",
        "Ln8/f0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/internal/UShortArraySerializer;

    invoke-direct {v0}, Lkotlinx/serialization/internal/UShortArraySerializer;-><init>()V

    sput-object v0, Lkotlinx/serialization/internal/UShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    sget-object v0, Ln8/e0;->b:Ln8/e0$a;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Ln8/e0$a;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic collectionSize(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ln8/f0;

    invoke-virtual {p1}, Ln8/f0;->q()[S

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UShortArraySerializer;->collectionSize-rL5Bavg([S)I

    move-result p0

    return p0
.end method

.method protected collectionSize-rL5Bavg([S)I
    .locals 0

    const-string p0, "$this$collectionSize"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln8/f0;->k([S)I

    move-result p0

    return p0
.end method

.method public bridge synthetic empty()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/UShortArraySerializer;->empty-amswpOA()[S

    move-result-object p0

    invoke-static {p0}, Ln8/f0;->a([S)Ln8/f0;

    move-result-object p0

    return-object p0
.end method

.method protected empty-amswpOA()[S
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ln8/f0;->c(I)[S

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Lkotlinx/serialization/internal/UShortArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/UShortArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UShortArrayBuilder;Z)V

    return-void
.end method

.method public bridge synthetic readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/PrimitiveArrayBuilder;Z)V
    .locals 0

    .line 2
    check-cast p3, Lkotlinx/serialization/internal/UShortArrayBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lkotlinx/serialization/internal/UShortArraySerializer;->readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UShortArrayBuilder;Z)V

    return-void
.end method

.method protected readElement(Lkotlinx/serialization/encoding/CompositeDecoder;ILkotlinx/serialization/internal/UShortArrayBuilder;Z)V
    .locals 0

    const-string p4, "decoder"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "builder"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Lkotlinx/serialization/encoding/CompositeDecoder;->decodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Decoder;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/encoding/Decoder;->decodeShort()S

    move-result p0

    invoke-static {p0}, Ln8/e0;->b(S)S

    move-result p0

    invoke-virtual {p3, p0}, Lkotlinx/serialization/internal/UShortArrayBuilder;->append-xj2QHRw$kotlinx_serialization_core(S)V

    return-void
.end method

.method public bridge synthetic toBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ln8/f0;

    invoke-virtual {p1}, Ln8/f0;->q()[S

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UShortArraySerializer;->toBuilder-rL5Bavg([S)Lkotlinx/serialization/internal/UShortArrayBuilder;

    move-result-object p0

    return-object p0
.end method

.method protected toBuilder-rL5Bavg([S)Lkotlinx/serialization/internal/UShortArrayBuilder;
    .locals 1

    const-string p0, "$this$toBuilder"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lkotlinx/serialization/internal/UShortArrayBuilder;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/internal/UShortArrayBuilder;-><init>([SLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic writeContent(Lkotlinx/serialization/encoding/CompositeEncoder;Ljava/lang/Object;I)V
    .locals 0

    check-cast p2, Ln8/f0;

    invoke-virtual {p2}, Ln8/f0;->q()[S

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/internal/UShortArraySerializer;->writeContent-eny0XGE(Lkotlinx/serialization/encoding/CompositeEncoder;[SI)V

    return-void
.end method

.method protected writeContent-eny0XGE(Lkotlinx/serialization/encoding/CompositeEncoder;[SI)V
    .locals 3

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeInlineElement(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Lkotlinx/serialization/encoding/Encoder;

    move-result-object v1

    invoke-static {p2, v0}, Ln8/f0;->i([SI)S

    move-result v2

    invoke-interface {v1, v2}, Lkotlinx/serialization/encoding/Encoder;->encodeShort(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
