.class public final Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueCache;->get(Lc9/c;)Lkotlinx/serialization/KSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw8/a;"
    }
.end annotation


# instance fields
.field final synthetic $key$inlined:Lc9/c;

.field final synthetic this$0:Lkotlinx/serialization/internal/ClassValueCache;


# direct methods
.method public constructor <init>(Lkotlinx/serialization/internal/ClassValueCache;Lc9/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    iput-object p2, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->$key$inlined:Lc9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lkotlinx/serialization/internal/CacheEntry;

    iget-object v1, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->this$0:Lkotlinx/serialization/internal/ClassValueCache;

    invoke-virtual {v1}, Lkotlinx/serialization/internal/ClassValueCache;->getCompute()Lw8/l;

    move-result-object v1

    iget-object p0, p0, Lkotlinx/serialization/internal/ClassValueCache$get$$inlined$getOrSet$1;->$key$inlined:Lc9/c;

    invoke-interface {v1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/KSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/internal/CacheEntry;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method
