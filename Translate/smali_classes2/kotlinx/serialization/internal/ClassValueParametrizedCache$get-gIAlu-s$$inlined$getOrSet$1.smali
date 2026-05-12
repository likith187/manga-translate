.class public final Lkotlinx/serialization/internal/ClassValueParametrizedCache$get-gIAlu-s$$inlined$getOrSet$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/ClassValueParametrizedCache;->get-gIAlu-s(Lc9/c;Ljava/util/List;)Ljava/lang/Object;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance p0, Lkotlinx/serialization/internal/ParametrizedCacheEntry;

    invoke-direct {p0}, Lkotlinx/serialization/internal/ParametrizedCacheEntry;-><init>()V

    return-object p0
.end method
