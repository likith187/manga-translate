.class public Ld6/e;
.super Ld6/g;
.source "SourceFile"


# instance fields
.field private final i:Lh6/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    invoke-direct {p0, p1}, Ld6/g;-><init>(Ljava/util/List;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm6/c;

    iget-object p1, p1, Lm6/c;->b:Ljava/lang/Object;

    check-cast p1, Lh6/d;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lh6/d;->e()I

    move-result v0

    :goto_0
    new-instance p1, Lh6/d;

    new-array v1, v0, [F

    new-array v0, v0, [I

    invoke-direct {p1, v1, v0}, Lh6/d;-><init>([F[I)V

    iput-object p1, p0, Ld6/e;->i:Lh6/d;

    return-void
.end method


# virtual methods
.method bridge synthetic i(Lm6/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Ld6/e;->p(Lm6/c;F)Lh6/d;

    move-result-object p0

    return-object p0
.end method

.method p(Lm6/c;F)Lh6/d;
    .locals 2

    iget-object v0, p0, Ld6/e;->i:Lh6/d;

    iget-object v1, p1, Lm6/c;->b:Ljava/lang/Object;

    check-cast v1, Lh6/d;

    iget-object p1, p1, Lm6/c;->c:Ljava/lang/Object;

    check-cast p1, Lh6/d;

    invoke-virtual {v0, v1, p1, p2}, Lh6/d;->f(Lh6/d;Lh6/d;F)V

    iget-object p0, p0, Ld6/e;->i:Lh6/d;

    return-object p0
.end method
