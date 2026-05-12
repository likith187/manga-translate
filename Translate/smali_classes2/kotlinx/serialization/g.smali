.class public final synthetic Lkotlinx/serialization/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc9/c;

    invoke-static {p1}, Lkotlinx/serialization/SerializersCacheKt;->a(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method
