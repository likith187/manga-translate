.class public Li1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/c;
.implements Lj1/a$b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;

.field private final d:Ln1/t$a;

.field private final e:Lj1/a;

.field private final f:Lj1/a;

.field private final g:Lj1/a;


# direct methods
.method public constructor <init>(Lo1/b;Ln1/t;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li1/u;->c:Ljava/util/List;

    invoke-virtual {p2}, Ln1/t;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Li1/u;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ln1/t;->g()Z

    move-result v0

    iput-boolean v0, p0, Li1/u;->b:Z

    invoke-virtual {p2}, Ln1/t;->f()Ln1/t$a;

    move-result-object v0

    iput-object v0, p0, Li1/u;->d:Ln1/t$a;

    invoke-virtual {p2}, Ln1/t;->e()Lm1/b;

    move-result-object v0

    invoke-virtual {v0}, Lm1/b;->a()Lj1/a;

    move-result-object v0

    iput-object v0, p0, Li1/u;->e:Lj1/a;

    invoke-virtual {p2}, Ln1/t;->b()Lm1/b;

    move-result-object v1

    invoke-virtual {v1}, Lm1/b;->a()Lj1/a;

    move-result-object v1

    iput-object v1, p0, Li1/u;->f:Lj1/a;

    invoke-virtual {p2}, Ln1/t;->d()Lm1/b;

    move-result-object p2

    invoke-virtual {p2}, Lm1/b;->a()Lj1/a;

    move-result-object p2

    iput-object p2, p0, Li1/u;->g:Lj1/a;

    invoke-virtual {p1, v0}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p1, v1}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {p1, p2}, Lo1/b;->j(Lj1/a;)V

    invoke-virtual {v0, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {v1, p0}, Lj1/a;->a(Lj1/a$b;)V

    invoke-virtual {p2, p0}, Lj1/a;->a(Lj1/a$b;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Li1/u;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li1/u;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj1/a$b;

    invoke-interface {v1}, Lj1/a$b;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method e(Lj1/a$b;)V
    .locals 0

    iget-object p0, p0, Li1/u;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g()Lj1/a;
    .locals 0

    iget-object p0, p0, Li1/u;->f:Lj1/a;

    return-object p0
.end method

.method public h()Lj1/a;
    .locals 0

    iget-object p0, p0, Li1/u;->g:Lj1/a;

    return-object p0
.end method

.method public j()Lj1/a;
    .locals 0

    iget-object p0, p0, Li1/u;->e:Lj1/a;

    return-object p0
.end method

.method k()Ln1/t$a;
    .locals 0

    iget-object p0, p0, Li1/u;->d:Ln1/t$a;

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Li1/u;->b:Z

    return p0
.end method
