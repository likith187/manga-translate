.class public final Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PRIMITIVE_TAG:Ljava/lang/String; = "primitive"


# direct methods
.method public static synthetic a(Lkotlin/jvm/internal/c0;Lkotlinx/serialization/json/JsonElement;)Ln8/h0;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->writeJson$lambda$0(Lkotlin/jvm/internal/c0;Lkotlinx/serialization/json/JsonElement;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRequiresTopLevelTag(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/TreeJsonEncoderKt;->getRequiresTopLevelTag(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic cast(Lkotlinx/serialization/json/JsonElement;Ljava/lang/String;Lw8/a;)Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lkotlinx/serialization/json/JsonElement;",
            ">(",
            "Lkotlinx/serialization/json/JsonElement;",
            "Ljava/lang/String;",
            "Lw8/a;",
            ")TT;"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "path"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->i(ILjava/lang/String;)V

    const-class v1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v1}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v1

    invoke-interface {v1}, Lc9/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object v1

    invoke-interface {v1}, Lc9/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " as the serialized body of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at element: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, -0x1

    invoke-static {p2, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method private static final getRequiresTopLevelTag(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z
    .locals 1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p0

    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$ENUM;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final writeJson(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/SerializationStrategy;)Lkotlinx/serialization/json/JsonElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/Json;",
            "TT;",
            "Lkotlinx/serialization/SerializationStrategy<",
            "-TT;>;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    .annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
    .end annotation

    const-string v0, "json"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/jvm/internal/c0;

    invoke-direct {v0}, Lkotlin/jvm/internal/c0;-><init>()V

    new-instance v1, Lkotlinx/serialization/json/internal/JsonTreeEncoder;

    new-instance v2, Lkotlinx/serialization/json/internal/d;

    invoke-direct {v2, v0}, Lkotlinx/serialization/json/internal/d;-><init>(Lkotlin/jvm/internal/c0;)V

    invoke-direct {v1, p0, v2}, Lkotlinx/serialization/json/internal/JsonTreeEncoder;-><init>(Lkotlinx/serialization/json/Json;Lw8/l;)V

    invoke-virtual {v1, p2, p1}, Lkotlinx/serialization/json/internal/AbstractJsonTreeEncoder;->encodeSerializableValue(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    iget-object p0, v0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    if-nez p0, :cond_0

    const-string p0, "result"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    :goto_0
    return-object p0
.end method

.method private static final writeJson$lambda$0(Lkotlin/jvm/internal/c0;Lkotlinx/serialization/json/JsonElement;)Ln8/h0;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
