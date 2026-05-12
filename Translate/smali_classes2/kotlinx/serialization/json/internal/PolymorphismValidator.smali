.class public final Lkotlinx/serialization/json/internal/PolymorphismValidator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/modules/SerializersModuleCollector;


# instance fields
.field private final discriminator:Ljava/lang/String;

.field private final useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "discriminator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/PolymorphismValidator;->useArrayPolymorphism:Z

    iput-object p2, p0, Lkotlinx/serialization/json/internal/PolymorphismValidator;->discriminator:Ljava/lang/String;

    return-void
.end method

.method private final checkDiscriminatorCollisions(Lkotlinx/serialization/descriptors/SerialDescriptor;Lc9/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Lc9/c;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/PolymorphismValidator;->discriminator:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Polymorphic serializer for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " has property \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' that conflicts with JSON class discriminator. You can either change class discriminator in JsonConfiguration, rename property with @SerialName annotation or fall back to array polymorphism"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private final checkKind(Lkotlinx/serialization/descriptors/SerialDescriptor;Lc9/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "Lc9/c;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p1

    instance-of v0, p1, Lkotlinx/serialization/descriptors/PolymorphicKind;

    const-string v1, "Serializer for "

    if-nez v0, :cond_2

    sget-object v0, Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;->INSTANCE:Lkotlinx/serialization/descriptors/SerialKind$CONTEXTUAL;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lkotlinx/serialization/json/internal/PolymorphismValidator;->useArrayPolymorphism:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lkotlinx/serialization/descriptors/StructureKind$LIST;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$LIST;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->INSTANCE:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    instance-of p0, p1, Lkotlinx/serialization/descriptors/PrimitiveKind;

    if-nez p0, :cond_1

    instance-of p0, p1, Lkotlinx/serialization/descriptors/SerialKind$ENUM;

    if-nez p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lc9/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " of kind "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be serialized polymorphically with class discriminator."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lc9/c;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " can\'t be registered as a subclass for polymorphic serialization because its kind "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not concrete. To work with multiple hierarchies, register it as a base class."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public contextual(Lc9/c;Lkotlinx/serialization/KSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;->contextual(Lkotlinx/serialization/modules/SerializersModuleCollector;Lc9/c;Lkotlinx/serialization/KSerializer;)V

    return-void
.end method

.method public contextual(Lc9/c;Lw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    .line 1
    const-string p0, "kClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "provider"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public polymorphic(Lc9/c;Lc9/c;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            "Sub::TBase;>(",
            "Lc9/c;",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "TSub;>;)V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actualClass"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "actualSerializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/PolymorphismValidator;->checkKind(Lkotlinx/serialization/descriptors/SerialDescriptor;Lc9/c;)V

    iget-boolean p3, p0, Lkotlinx/serialization/json/internal/PolymorphismValidator;->useArrayPolymorphism:Z

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/PolymorphismValidator;->checkDiscriminatorCollisions(Lkotlinx/serialization/descriptors/SerialDescriptor;Lc9/c;)V

    :cond_0
    return-void
.end method

.method public polymorphicDefault(Lc9/c;Lw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;->polymorphicDefault(Lkotlinx/serialization/modules/SerializersModuleCollector;Lc9/c;Lw8/l;)V

    return-void
.end method

.method public polymorphicDefaultDeserializer(Lc9/c;Lw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string p0, "baseClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defaultDeserializerProvider"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public polymorphicDefaultSerializer(Lc9/c;Lw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lc9/c;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string p0, "baseClass"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "defaultSerializerProvider"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
