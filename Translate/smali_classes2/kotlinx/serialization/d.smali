.class public final synthetic Lkotlinx/serialization/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lkotlinx/serialization/SealedClassSerializer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lkotlinx/serialization/SealedClassSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lkotlinx/serialization/d;->b:Lkotlinx/serialization/SealedClassSerializer;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/d;->a:Ljava/lang/String;

    iget-object p0, p0, Lkotlinx/serialization/d;->b:Lkotlinx/serialization/SealedClassSerializer;

    invoke-static {v0, p0}, Lkotlinx/serialization/SealedClassSerializer;->c(Ljava/lang/String;Lkotlinx/serialization/SealedClassSerializer;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method
