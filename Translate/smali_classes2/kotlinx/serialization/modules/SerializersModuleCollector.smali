.class public interface abstract Lkotlinx/serialization/modules/SerializersModuleCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# virtual methods
.method public abstract contextual(Lc9/c;Lkotlinx/serialization/KSerializer;)V
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
.end method

.method public abstract contextual(Lc9/c;Lw8/l;)V
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
.end method

.method public abstract polymorphic(Lc9/c;Lc9/c;Lkotlinx/serialization/KSerializer;)V
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
.end method

.method public abstract polymorphicDefault(Lc9/c;Lw8/l;)V
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
.end method

.method public abstract polymorphicDefaultDeserializer(Lc9/c;Lw8/l;)V
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
.end method

.method public abstract polymorphicDefaultSerializer(Lc9/c;Lw8/l;)V
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
.end method
