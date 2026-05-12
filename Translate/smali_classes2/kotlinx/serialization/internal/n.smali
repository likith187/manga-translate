.class public final synthetic Lkotlinx/serialization/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/TripleSerializer;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/internal/TripleSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/n;->a:Lkotlinx/serialization/internal/TripleSerializer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/internal/n;->a:Lkotlinx/serialization/internal/TripleSerializer;

    check-cast p1, Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;

    invoke-static {p0, p1}, Lkotlinx/serialization/internal/TripleSerializer;->a(Lkotlinx/serialization/internal/TripleSerializer;Lkotlinx/serialization/descriptors/ClassSerialDescriptorBuilder;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method
