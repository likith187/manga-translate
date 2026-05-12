.class public Lc6/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc6/c;
.implements Ld6/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;

.field private final d:Lh6/s$a;

.field private final e:Ld6/a;

.field private final f:Ld6/a;

.field private final g:Ld6/a;


# direct methods
.method public constructor <init>(Li6/b;Lh6/s;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc6/u;->c:Ljava/util/List;

    invoke-virtual {p2}, Lh6/s;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc6/u;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lh6/s;->g()Z

    move-result v0

    iput-boolean v0, p0, Lc6/u;->b:Z

    invoke-virtual {p2}, Lh6/s;->f()Lh6/s$a;

    move-result-object v0

    iput-object v0, p0, Lc6/u;->d:Lh6/s$a;

    invoke-virtual {p2}, Lh6/s;->e()Lg6/b;

    move-result-object v0

    invoke-virtual {v0}, Lg6/b;->a()Ld6/a;

    move-result-object v0

    iput-object v0, p0, Lc6/u;->e:Ld6/a;

    invoke-virtual {p2}, Lh6/s;->b()Lg6/b;

    move-result-object v1

    invoke-virtual {v1}, Lg6/b;->a()Ld6/a;

    move-result-object v1

    iput-object v1, p0, Lc6/u;->f:Ld6/a;

    invoke-virtual {p2}, Lh6/s;->d()Lg6/b;

    move-result-object p2

    invoke-virtual {p2}, Lg6/b;->a()Ld6/a;

    move-result-object p2

    iput-object p2, p0, Lc6/u;->g:Ld6/a;

    invoke-virtual {p1, v0}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p1, v1}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {p1, p2}, Li6/b;->j(Ld6/a;)V

    invoke-virtual {v0, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {v1, p0}, Ld6/a;->a(Ld6/a$b;)V

    invoke-virtual {p2, p0}, Ld6/a;->a(Ld6/a$b;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lc6/u;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc6/u;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld6/a$b;

    invoke-interface {v1}, Ld6/a$b;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method e(Ld6/a$b;)V
    .locals 0

    iget-object p0, p0, Lc6/u;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public h()Ld6/a;
    .locals 0

    iget-object p0, p0, Lc6/u;->f:Ld6/a;

    return-object p0
.end method

.method public i()Ld6/a;
    .locals 0

    iget-object p0, p0, Lc6/u;->g:Ld6/a;

    return-object p0
.end method

.method public j()Ld6/a;
    .locals 0

    iget-object p0, p0, Lc6/u;->e:Ld6/a;

    return-object p0
.end method

.method k()Lh6/s$a;
    .locals 0

    iget-object p0, p0, Lc6/u;->d:Lh6/s$a;

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lc6/u;->b:Z

    return p0
.end method
