.class public final synthetic Lkotlinx/serialization/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/EnumSerializer;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/internal/EnumSerializer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/internal/c;->a:Lkotlinx/serialization/internal/EnumSerializer;

    iput-object p2, p0, Lkotlinx/serialization/internal/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/c;->a:Lkotlinx/serialization/internal/EnumSerializer;

    iget-object p0, p0, Lkotlinx/serialization/internal/c;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlinx/serialization/internal/EnumSerializer;->a(Lkotlinx/serialization/internal/EnumSerializer;Ljava/lang/String;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method
