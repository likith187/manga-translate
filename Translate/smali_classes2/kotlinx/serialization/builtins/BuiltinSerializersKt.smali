.class public final Lkotlinx/serialization/builtins/BuiltinSerializersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final ArraySerializer(Lc9/c;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::TT;>(",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "TE;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "kClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lkotlinx/serialization/internal/ReferenceArraySerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/ReferenceArraySerializer;-><init>(Lc9/c;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final synthetic ArraySerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "E::TT;>(",
            "Lkotlinx/serialization/KSerializer<",
            "TE;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "[TE;>;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v0

    .line 1
    invoke-static {v0, p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->ArraySerializer(Lc9/c;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static final BooleanArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[Z>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/BooleanArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanArraySerializer;

    return-object v0
.end method

.method public static final ByteArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[B>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/ByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteArraySerializer;

    return-object v0
.end method

.method public static final CharArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[C>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/CharArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/CharArraySerializer;

    return-object v0
.end method

.method public static final DoubleArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[D>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/DoubleArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleArraySerializer;

    return-object v0
.end method

.method public static final FloatArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[F>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/FloatArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatArraySerializer;

    return-object v0
.end method

.method public static final IntArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[I>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/IntArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/IntArraySerializer;

    return-object v0
.end method

.method public static final ListSerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final LongArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[J>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/LongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/LongArraySerializer;

    return-object v0
.end method

.method public static final MapEntrySerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/MapEntrySerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/MapEntrySerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final MapSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final NothingSerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/NothingSerializer;->INSTANCE:Lkotlinx/serialization/internal/NothingSerializer;

    return-object v0
.end method

.method public static final PairSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/q;",
            ">;"
        }
    .end annotation

    const-string v0, "keySerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/PairSerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/PairSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final SetSerializer(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final ShortArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "[S>;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/ShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ShortArraySerializer;

    return-object v0
.end method

.method public static final TripleSerializer(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TA;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TB;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TC;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/v;",
            ">;"
        }
    .end annotation

    const-string v0, "aSerializer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bSerializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cSerializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/TripleSerializer;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/serialization/internal/TripleSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final UByteArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/y;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/UByteArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteArraySerializer;

    return-object v0
.end method

.method public static final UIntArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/a0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/UIntArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntArraySerializer;

    return-object v0
.end method

.method public static final ULongArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/c0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/ULongArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongArraySerializer;

    return-object v0
.end method

.method public static final UShortArraySerializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/f0;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
    .end annotation

    sget-object v0, Lkotlinx/serialization/internal/UShortArraySerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortArraySerializer;

    return-object v0
.end method

.method public static final getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->isNullable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/serialization/internal/NullableSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/NullableSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic getNullable$annotations(Lkotlinx/serialization/KSerializer;)V
    .locals 0

    return-void
.end method

.method public static final serializer(Ld9/a$a;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld9/a$a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ld9/a;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object p0, Lkotlinx/serialization/internal/DurationSerializer;->INSTANCE:Lkotlinx/serialization/internal/DurationSerializer;

    return-object p0
.end method

.method public static final serializer(Le9/b$a;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le9/b$a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Le9/b;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object p0, Lkotlinx/serialization/internal/UuidSerializer;->INSTANCE:Lkotlinx/serialization/internal/UuidSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/c;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/c;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object p0, Lkotlinx/serialization/internal/BooleanSerializer;->INSTANCE:Lkotlinx/serialization/internal/BooleanSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/d;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/d;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object p0, Lkotlinx/serialization/internal/ByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/ByteSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/f0;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/f0;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lkotlinx/serialization/internal/ShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/ShortSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/f;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/f;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p0, Lkotlinx/serialization/internal/CharSerializer;->INSTANCE:Lkotlinx/serialization/internal/CharSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/h0;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/h0;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/j;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/j;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lkotlinx/serialization/internal/DoubleSerializer;->INSTANCE:Lkotlinx/serialization/internal/DoubleSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/k;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/k;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object p0, Lkotlinx/serialization/internal/FloatSerializer;->INSTANCE:Lkotlinx/serialization/internal/FloatSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/q;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/q;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lkotlinx/serialization/internal/IntSerializer;->INSTANCE:Lkotlinx/serialization/internal/IntSerializer;

    return-object p0
.end method

.method public static final serializer(Lkotlin/jvm/internal/t;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/t;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    return-object p0
.end method

.method public static final serializer(Ln8/b0$a;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/b0$a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/b0;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object p0, Lkotlinx/serialization/internal/ULongSerializer;->INSTANCE:Lkotlinx/serialization/internal/ULongSerializer;

    return-object p0
.end method

.method public static final serializer(Ln8/e0$a;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/e0$a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object p0, Lkotlinx/serialization/internal/UShortSerializer;->INSTANCE:Lkotlinx/serialization/internal/UShortSerializer;

    return-object p0
.end method

.method public static final serializer(Ln8/h0;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/h0;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/h0;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object p0, Lkotlinx/serialization/internal/UnitSerializer;->INSTANCE:Lkotlinx/serialization/internal/UnitSerializer;

    return-object p0
.end method

.method public static final serializer(Ln8/x$a;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/x$a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/x;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object p0, Lkotlinx/serialization/internal/UByteSerializer;->INSTANCE:Lkotlinx/serialization/internal/UByteSerializer;

    return-object p0
.end method

.method public static final serializer(Ln8/z$a;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln8/z$a;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "Ln8/z;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object p0, Lkotlinx/serialization/internal/UIntSerializer;->INSTANCE:Lkotlinx/serialization/internal/UIntSerializer;

    return-object p0
.end method
