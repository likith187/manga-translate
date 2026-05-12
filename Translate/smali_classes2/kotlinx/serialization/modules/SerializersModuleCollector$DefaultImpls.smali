.class public final Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/modules/SerializersModuleCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic a(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;->contextual$lambda$0(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static contextual(Lkotlinx/serialization/modules/SerializersModuleCollector;Lc9/c;Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModuleCollector;",
            "Lc9/c;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/modules/a;

    invoke-direct {v0, p2}, Lkotlinx/serialization/modules/a;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p0, p1, v0}, Lkotlinx/serialization/modules/SerializersModuleCollector;->contextual(Lc9/c;Lw8/l;)V

    return-void
.end method

.method private static contextual$lambda$0(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static polymorphicDefault(Lkotlinx/serialization/modules/SerializersModuleCollector;Lc9/c;Lw8/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Base:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/modules/SerializersModuleCollector;",
            "Lc9/c;",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "baseClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDeserializerProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1, p2}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphicDefaultDeserializer(Lc9/c;Lw8/l;)V

    return-void
.end method
