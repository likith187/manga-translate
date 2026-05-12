.class public final synthetic Lkotlinx/serialization/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lc9/c;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lkotlinx/serialization/SerializersCacheKt;->d(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method
