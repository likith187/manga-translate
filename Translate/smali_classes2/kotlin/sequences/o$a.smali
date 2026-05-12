.class public final Lkotlin/sequences/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/sequences/o;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/Iterator;

.field final synthetic b:Lkotlin/sequences/o;


# direct methods
.method constructor <init>(Lkotlin/sequences/o;)V
    .locals 0

    iput-object p1, p0, Lkotlin/sequences/o$a;->b:Lkotlin/sequences/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/sequences/o;->b(Lkotlin/sequences/o;)Lkotlin/sequences/f;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lkotlin/sequences/o$a;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lkotlin/sequences/o$a;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlin/sequences/o$a;->b:Lkotlin/sequences/o;

    invoke-static {v0}, Lkotlin/sequences/o;->c(Lkotlin/sequences/o;)Lw8/l;

    move-result-object v0

    iget-object p0, p0, Lkotlin/sequences/o$a;->a:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
