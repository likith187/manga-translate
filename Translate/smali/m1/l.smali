.class public Lm1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1/c;


# instance fields
.field private final a:Lm1/e;

.field private final b:Lm1/m;

.field private final c:Lm1/g;

.field private final d:Lm1/b;

.field private final e:Lm1/d;

.field private final f:Lm1/b;

.field private final g:Lm1/b;

.field private final h:Lm1/b;

.field private final i:Lm1/b;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v9}, Lm1/l;-><init>(Lm1/e;Lm1/m;Lm1/g;Lm1/b;Lm1/d;Lm1/b;Lm1/b;Lm1/b;Lm1/b;)V

    return-void
.end method

.method public constructor <init>(Lm1/e;Lm1/m;Lm1/g;Lm1/b;Lm1/d;Lm1/b;Lm1/b;Lm1/b;Lm1/b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lm1/l;->j:Z

    .line 4
    iput-object p1, p0, Lm1/l;->a:Lm1/e;

    .line 5
    iput-object p2, p0, Lm1/l;->b:Lm1/m;

    .line 6
    iput-object p3, p0, Lm1/l;->c:Lm1/g;

    .line 7
    iput-object p4, p0, Lm1/l;->d:Lm1/b;

    .line 8
    iput-object p5, p0, Lm1/l;->e:Lm1/d;

    .line 9
    iput-object p6, p0, Lm1/l;->h:Lm1/b;

    .line 10
    iput-object p7, p0, Lm1/l;->i:Lm1/b;

    .line 11
    iput-object p8, p0, Lm1/l;->f:Lm1/b;

    .line 12
    iput-object p9, p0, Lm1/l;->g:Lm1/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/airbnb/lottie/i0;Lcom/airbnb/lottie/j;Lo1/b;)Li1/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Lj1/p;
    .locals 1

    new-instance v0, Lj1/p;

    invoke-direct {v0, p0}, Lj1/p;-><init>(Lm1/l;)V

    return-object v0
.end method

.method public c()Lm1/e;
    .locals 0

    iget-object p0, p0, Lm1/l;->a:Lm1/e;

    return-object p0
.end method

.method public d()Lm1/b;
    .locals 0

    iget-object p0, p0, Lm1/l;->i:Lm1/b;

    return-object p0
.end method

.method public e()Lm1/d;
    .locals 0

    iget-object p0, p0, Lm1/l;->e:Lm1/d;

    return-object p0
.end method

.method public f()Lm1/m;
    .locals 0

    iget-object p0, p0, Lm1/l;->b:Lm1/m;

    return-object p0
.end method

.method public g()Lm1/b;
    .locals 0

    iget-object p0, p0, Lm1/l;->d:Lm1/b;

    return-object p0
.end method

.method public h()Lm1/g;
    .locals 0

    iget-object p0, p0, Lm1/l;->c:Lm1/g;

    return-object p0
.end method

.method public i()Lm1/b;
    .locals 0

    iget-object p0, p0, Lm1/l;->f:Lm1/b;

    return-object p0
.end method

.method public j()Lm1/b;
    .locals 0

    iget-object p0, p0, Lm1/l;->g:Lm1/b;

    return-object p0
.end method

.method public k()Lm1/b;
    .locals 0

    iget-object p0, p0, Lm1/l;->h:Lm1/b;

    return-object p0
.end method

.method public l()Z
    .locals 0

    iget-boolean p0, p0, Lm1/l;->j:Z

    return p0
.end method

.method public m(Z)V
    .locals 0

    iput-boolean p1, p0, Lm1/l;->j:Z

    return-void
.end method
