.class public Lg6/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh6/c;


# instance fields
.field private final a:Lg6/e;

.field private final b:Lg6/m;

.field private final c:Lg6/g;

.field private final d:Lg6/b;

.field private final e:Lg6/d;

.field private final f:Lg6/b;

.field private final g:Lg6/b;

.field private final h:Lg6/b;

.field private final i:Lg6/b;


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
    invoke-direct/range {v0 .. v9}, Lg6/l;-><init>(Lg6/e;Lg6/m;Lg6/g;Lg6/b;Lg6/d;Lg6/b;Lg6/b;Lg6/b;Lg6/b;)V

    return-void
.end method

.method public constructor <init>(Lg6/e;Lg6/m;Lg6/g;Lg6/b;Lg6/d;Lg6/b;Lg6/b;Lg6/b;Lg6/b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lg6/l;->a:Lg6/e;

    .line 4
    iput-object p2, p0, Lg6/l;->b:Lg6/m;

    .line 5
    iput-object p3, p0, Lg6/l;->c:Lg6/g;

    .line 6
    iput-object p4, p0, Lg6/l;->d:Lg6/b;

    .line 7
    iput-object p5, p0, Lg6/l;->e:Lg6/d;

    .line 8
    iput-object p6, p0, Lg6/l;->h:Lg6/b;

    .line 9
    iput-object p7, p0, Lg6/l;->i:Lg6/b;

    .line 10
    iput-object p8, p0, Lg6/l;->f:Lg6/b;

    .line 11
    iput-object p9, p0, Lg6/l;->g:Lg6/b;

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/anim/o;Lcom/oplus/anim/a;Li6/b;)Lc6/c;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ld6/p;
    .locals 1

    new-instance v0, Ld6/p;

    invoke-direct {v0, p0}, Ld6/p;-><init>(Lg6/l;)V

    return-object v0
.end method

.method public c()Lg6/e;
    .locals 0

    iget-object p0, p0, Lg6/l;->a:Lg6/e;

    return-object p0
.end method

.method public d()Lg6/b;
    .locals 0

    iget-object p0, p0, Lg6/l;->i:Lg6/b;

    return-object p0
.end method

.method public e()Lg6/d;
    .locals 0

    iget-object p0, p0, Lg6/l;->e:Lg6/d;

    return-object p0
.end method

.method public f()Lg6/m;
    .locals 0

    iget-object p0, p0, Lg6/l;->b:Lg6/m;

    return-object p0
.end method

.method public g()Lg6/b;
    .locals 0

    iget-object p0, p0, Lg6/l;->d:Lg6/b;

    return-object p0
.end method

.method public h()Lg6/g;
    .locals 0

    iget-object p0, p0, Lg6/l;->c:Lg6/g;

    return-object p0
.end method

.method public i()Lg6/b;
    .locals 0

    iget-object p0, p0, Lg6/l;->f:Lg6/b;

    return-object p0
.end method

.method public j()Lg6/b;
    .locals 0

    iget-object p0, p0, Lg6/l;->g:Lg6/b;

    return-object p0
.end method

.method public k()Lg6/b;
    .locals 0

    iget-object p0, p0, Lg6/l;->h:Lg6/b;

    return-object p0
.end method
