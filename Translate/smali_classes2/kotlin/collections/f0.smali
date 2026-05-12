.class public final Lkotlin/collections/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lx8/a;


# instance fields
.field private final a:Lw8/a;


# direct methods
.method public constructor <init>(Lw8/a;)V
    .locals 1

    const-string v0, "iteratorFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/collections/f0;->a:Lw8/a;

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lkotlin/collections/g0;

    iget-object p0, p0, Lkotlin/collections/f0;->a:Lw8/a;

    invoke-interface {p0}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, Lkotlin/collections/g0;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method
