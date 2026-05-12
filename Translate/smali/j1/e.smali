.class public Lj1/e;
.super Lj1/g;
.source "SourceFile"


# instance fields
.field private final i:Ln1/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3

    invoke-direct {p0, p1}, Lj1/g;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a;

    iget-object v2, v2, Ls1/a;->b:Ljava/lang/Object;

    check-cast v2, Ln1/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ln1/d;->f()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ln1/d;

    new-array v0, v1, [F

    new-array v1, v1, [I

    invoke-direct {p1, v0, v1}, Ln1/d;-><init>([F[I)V

    iput-object p1, p0, Lj1/e;->i:Ln1/d;

    return-void
.end method


# virtual methods
.method bridge synthetic i(Ls1/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj1/e;->q(Ls1/a;F)Ln1/d;

    move-result-object p0

    return-object p0
.end method

.method q(Ls1/a;F)Ln1/d;
    .locals 2

    iget-object v0, p0, Lj1/e;->i:Ln1/d;

    iget-object v1, p1, Ls1/a;->b:Ljava/lang/Object;

    check-cast v1, Ln1/d;

    iget-object p1, p1, Ls1/a;->c:Ljava/lang/Object;

    check-cast p1, Ln1/d;

    invoke-virtual {v0, v1, p1, p2}, Ln1/d;->g(Ln1/d;Ln1/d;F)V

    iget-object p0, p0, Lj1/e;->i:Ln1/d;

    return-object p0
.end method
