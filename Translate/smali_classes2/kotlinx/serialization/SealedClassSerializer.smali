.class public final Lkotlinx/serialization/SealedClassSerializer;
.super Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/serialization/internal/AbstractPolymorphicSerializer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/InternalSerializationApi;
.end annotation


# instance fields
.field private _annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field private final baseClass:Lc9/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc9/c;"
        }
    .end annotation
.end field

.field private final class2Serializer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private final descriptor$delegate:Ln8/j;

.field private final serialName2Serializer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc9/c;[Lc9/c;[Lkotlinx/serialization/KSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc9/c;",
            "[",
            "Lc9/c;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;)V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subclasses"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subclassSerializers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;-><init>()V

    .line 2
    iput-object p2, p0, Lkotlinx/serialization/SealedClassSerializer;->baseClass:Lc9/c;

    .line 3
    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lkotlinx/serialization/SealedClassSerializer;->_annotations:Ljava/util/List;

    .line 4
    sget-object p2, Ln8/n;->PUBLICATION:Ln8/n;

    new-instance v0, Lkotlinx/serialization/d;

    invoke-direct {v0, p1, p0}, Lkotlinx/serialization/d;-><init>(Ljava/lang/String;Lkotlinx/serialization/SealedClassSerializer;)V

    invoke-static {p2, v0}, Ln8/k;->a(Ln8/n;Lw8/a;)Ln8/j;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/SealedClassSerializer;->descriptor$delegate:Ln8/j;

    .line 5
    array-length p1, p3

    array-length p2, p4

    if-ne p1, p2, :cond_4

    .line 6
    invoke-static {p3, p4}, Lkotlin/collections/i;->b0([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/j0;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/SealedClassSerializer;->class2Serializer:Ljava/util/Map;

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 8
    new-instance p2, Lkotlinx/serialization/SealedClassSerializer$special$$inlined$groupingBy$1;

    invoke-direct {p2, p1}, Lkotlinx/serialization/SealedClassSerializer$special$$inlined$groupingBy$1;-><init>(Ljava/lang/Iterable;)V

    .line 9
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 10
    invoke-interface {p2}, Lkotlin/collections/d0;->sourceIterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 11
    invoke-interface {p2, p4}, Lkotlin/collections/d0;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 13
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    :cond_0
    check-cast p4, Ljava/util/Map$Entry;

    check-cast v1, Ljava/util/Map$Entry;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-interface {p1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Multiple sealed subclasses of \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/SealedClassSerializer;->getBaseClass()Lc9/c;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' have the same serial name \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': \'"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .line 17
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string p0, "\', \'"

    .line 19
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    .line 21
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-static {p3}, Lkotlin/collections/j0;->e(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 25
    check-cast p3, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    .line 27
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlinx/serialization/KSerializer;

    .line 28
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 29
    :cond_3
    iput-object p2, p0, Lkotlinx/serialization/SealedClassSerializer;->serialName2Serializer:Ljava/util/Map;

    return-void

    .line 30
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "All subclasses of sealed class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/SealedClassSerializer;->getBaseClass()Lc9/c;

    move-result-object p0

    invoke-interface {p0}, Lc9/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " should be marked @Serializable"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lc9/c;[Lc9/c;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc9/c;",
            "[",
            "Lc9/c;",
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "+TT;>;[",
            "Ljava/lang/annotation/Annotation;",
            ")V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subclasses"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subclassSerializers"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classAnnotations"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lc9/c;[Lc9/c;[Lkotlinx/serialization/KSerializer;)V

    .line 32
    invoke-static {p5}, Lkotlin/collections/i;->f([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/SealedClassSerializer;->_annotations:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/SealedClassSerializer;->descriptor_delegate$lambda$3$lambda$2(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/SealedClassSerializer;->descriptor_delegate$lambda$3$lambda$2$lambda$1(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;Lkotlinx/serialization/SealedClassSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/SealedClassSerializer;->descriptor_delegate$lambda$3(Ljava/lang/String;Lkotlinx/serialization/SealedClassSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static final descriptor_delegate$lambda$3(Ljava/lang/String;Lkotlinx/serialization/SealedClassSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 3

    sget-object v0, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;->INSTANCE:Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v2, Lkotlinx/serialization/e;

    invoke-direct {v2, p1}, Lkotlinx/serialization/e;-><init>(Lkotlinx/serialization/SealedClassSerializer;)V

    invoke-static {p0, v0, v1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lw8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private static final descriptor_delegate$lambda$3$lambda$2(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;
    .locals 11

    const-string v0, "$this$buildSerialDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/jvm/internal/h0;->INSTANCE:Lkotlin/jvm/internal/h0;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->serializer(Lkotlin/jvm/internal/h0;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    const/16 v6, 0xc

    const/4 v7, 0x0

    const-string v2, "type"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kotlinx.serialization.Sealed<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/SealedClassSerializer;->getBaseClass()Lc9/c;

    move-result-object v1

    invoke-interface {v1}, Lc9/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v3, Lkotlinx/serialization/f;

    invoke-direct {v3, p0}, Lkotlinx/serialization/f;-><init>(Lkotlinx/serialization/SealedClassSerializer;)V

    invoke-static {v0, v1, v2, v3}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->buildSerialDescriptor(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lw8/l;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v6

    const/16 v9, 0xc

    const/4 v10, 0x0

    const-string v5, "value"

    const/4 v8, 0x0

    move-object v4, p1

    invoke-static/range {v4 .. v10}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer;->_annotations:Ljava/util/List;

    invoke-virtual {p1, p0}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->setAnnotations(Ljava/util/List;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method private static final descriptor_delegate$lambda$3$lambda$2$lambda$1(Lkotlinx/serialization/SealedClassSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;
    .locals 9

    const-string v0, "$this$buildSerialDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer;->serialName2Serializer:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-interface {v0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;->element$default(Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/util/List;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method


# virtual methods
.method public findPolymorphicSerializerOrNull(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/CompositeDecoder;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/serialization/DeserializationStrategy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer;->serialName2Serializer:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->findPolymorphicSerializerOrNull(Lkotlinx/serialization/encoding/CompositeDecoder;Ljava/lang/String;)Lkotlinx/serialization/DeserializationStrategy;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public findPolymorphicSerializerOrNull(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/encoding/Encoder;",
            "TT;)",
            "Lkotlinx/serialization/SerializationStrategy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/SealedClassSerializer;->class2Serializer:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/serialization/internal/AbstractPolymorphicSerializer;->findPolymorphicSerializerOrNull(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lkotlinx/serialization/SerializationStrategy;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getBaseClass()Lc9/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc9/c;"
        }
    .end annotation

    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer;->baseClass:Lc9/c;

    return-object p0
.end method

.method public getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/SealedClassSerializer;->descriptor$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method
