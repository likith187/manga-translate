.class public final synthetic Lkotlinx/serialization/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/ContextualSerializer;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/ContextualSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/a;->a:Lkotlinx/serialization/ContextualSerializer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/a;->a:Lkotlinx/serialization/ContextualSerializer;

    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-static {p0, p1}, Lkotlinx/serialization/ContextualSerializer;->a(Lkotlinx/serialization/ContextualSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method
