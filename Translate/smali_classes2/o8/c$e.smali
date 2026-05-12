.class public final Lo8/c$e;
.super Lo8/c$d;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lx8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo8/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Lo8/c;)V
    .locals 1

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo8/c$d;-><init>(Lo8/c;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lo8/c$d;->a()V

    invoke-virtual {p0}, Lo8/c$d;->c()I

    move-result v0

    invoke-virtual {p0}, Lo8/c$d;->e()Lo8/c;

    move-result-object v1

    invoke-static {v1}, Lo8/c;->access$getLength$p(Lo8/c;)I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lo8/c$d;->c()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lo8/c$d;->g(I)V

    invoke-virtual {p0, v0}, Lo8/c$d;->h(I)V

    invoke-virtual {p0}, Lo8/c$d;->e()Lo8/c;

    move-result-object v0

    invoke-static {v0}, Lo8/c;->access$getKeysArray$p(Lo8/c;)[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lo8/c$d;->d()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lo8/c$d;->f()V

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
