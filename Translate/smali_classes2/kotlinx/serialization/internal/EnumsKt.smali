.class public final Lkotlinx/serialization/internal/EnumsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final createAnnotatedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;[",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "names"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entryAnnotations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    array-length v2, p4

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p4, v3

    invoke-virtual {v0, v4}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushClassAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length p4, p1

    move v2, v1

    move v3, v2

    :goto_1
    if-ge v2, p4, :cond_3

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    invoke-static {p2, v3}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    :cond_1
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-static {v0, v6, v1, v4, v7}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement$default(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p3, v3}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/annotation/Annotation;

    if-eqz v3, :cond_2

    array-length v4, v3

    move v6, v1

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v0, v7}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_1

    :cond_3
    new-instance p2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {p2, p0, p1, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object p2
.end method

.method public static final createMarkedEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/KSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;[",
            "Ljava/lang/String;",
            "[[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "names"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/EnumDescriptor;

    array-length v1, p1

    invoke-direct {v0, p0, v1}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    add-int/lit8 v6, v4, 0x1

    invoke-static {p2, v4}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_0

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-static {v0, v7, v2, v5, v8}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->addElement$default(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;Ljava/lang/String;ZILjava/lang/Object;)V

    invoke-static {p3, v4}, Lkotlin/collections/i;->H([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/annotation/Annotation;

    if-eqz v4, :cond_1

    array-length v5, v4

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    invoke-virtual {v0, v8}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->pushAnnotation(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_2
    new-instance p2, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {p2, p0, p1, v0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-object p2
.end method

.method public static final createSimpleEnumSerializer(Ljava/lang/String;[Ljava/lang/Enum;)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "[TT;)",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    invoke-direct {v0, p0, p1}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0
.end method
