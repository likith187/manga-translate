.class public final synthetic Lkotlinx/serialization/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlinx/serialization/internal/ObjectSerializer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/serialization/internal/ObjectSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/internal/e;->b:Lkotlinx/serialization/internal/ObjectSerializer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lkotlinx/serialization/internal/e;->b:Lkotlinx/serialization/internal/ObjectSerializer;

    invoke-static {v0, p0}, Lkotlinx/serialization/internal/ObjectSerializer;->b(Ljava/lang/String;Lkotlinx/serialization/internal/ObjectSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method
