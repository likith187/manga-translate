.class public final synthetic Lkotlinx/serialization/modules/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/KSerializer;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/KSerializer;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/KSerializer;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lkotlinx/serialization/modules/SerializersModuleCollector$DefaultImpls;->a(Lkotlinx/serialization/KSerializer;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method
