.class public final synthetic Lkotlinx/serialization/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/PolymorphicSerializer;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/PolymorphicSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b;->a:Lkotlinx/serialization/PolymorphicSerializer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/b;->a:Lkotlinx/serialization/PolymorphicSerializer;

    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-static {p0, p1}, Lkotlinx/serialization/PolymorphicSerializer;->b(Lkotlinx/serialization/PolymorphicSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method
