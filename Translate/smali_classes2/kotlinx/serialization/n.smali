.class public final synthetic Lkotlinx/serialization/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/n;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/n;->a:Ljava/util/List;

    invoke-static {p0}, Lkotlinx/serialization/SerializersKt__SerializersKt;->b(Ljava/util/List;)Lc9/e;

    move-result-object p0

    return-object p0
.end method
