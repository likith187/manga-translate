.class public abstract Lo8/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final a:Lo8/c;

.field private b:I

.field private c:I

.field private f:I


# direct methods
.method public constructor <init>(Lo8/c;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/c$d;->a:Lo8/c;

    const/4 v0, -0x1

    iput v0, p0, Lo8/c$d;->c:I

    invoke-static {p1}, Lo8/c;->access$getModCount$p(Lo8/c;)I

    move-result p1

    iput p1, p0, Lo8/c$d;->f:I

    invoke-virtual {p0}, Lo8/c$d;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lo8/c$d;->a:Lo8/c;

    invoke-static {v0}, Lo8/c;->access$getModCount$p(Lo8/c;)I

    move-result v0

    iget p0, p0, Lo8/c$d;->f:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lo8/c$d;->b:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lo8/c$d;->c:I

    return p0
.end method

.method public final e()Lo8/c;
    .locals 0

    iget-object p0, p0, Lo8/c$d;->a:Lo8/c;

    return-object p0
.end method

.method public final f()V
    .locals 2

    :goto_0
    iget v0, p0, Lo8/c$d;->b:I

    iget-object v1, p0, Lo8/c$d;->a:Lo8/c;

    invoke-static {v1}, Lo8/c;->access$getLength$p(Lo8/c;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lo8/c$d;->a:Lo8/c;

    invoke-static {v0}, Lo8/c;->access$getPresenceArray$p(Lo8/c;)[I

    move-result-object v0

    iget v1, p0, Lo8/c$d;->b:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo8/c$d;->b:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lo8/c$d;->b:I

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lo8/c$d;->c:I

    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lo8/c$d;->b:I

    iget-object p0, p0, Lo8/c$d;->a:Lo8/c;

    invoke-static {p0}, Lo8/c;->access$getLength$p(Lo8/c;)I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final remove()V
    .locals 3

    invoke-virtual {p0}, Lo8/c$d;->a()V

    iget v0, p0, Lo8/c$d;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo8/c$d;->a:Lo8/c;

    invoke-virtual {v0}, Lo8/c;->checkIsMutable$kotlin_stdlib()V

    iget-object v0, p0, Lo8/c$d;->a:Lo8/c;

    iget v2, p0, Lo8/c$d;->c:I

    invoke-static {v0, v2}, Lo8/c;->access$removeEntryAt(Lo8/c;I)V

    iput v1, p0, Lo8/c$d;->c:I

    iget-object v0, p0, Lo8/c$d;->a:Lo8/c;

    invoke-static {v0}, Lo8/c;->access$getModCount$p(Lo8/c;)I

    move-result v0

    iput v0, p0, Lo8/c$d;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
