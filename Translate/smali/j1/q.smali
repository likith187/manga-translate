.class public Lj1/q;
.super Lj1/a;
.source "SourceFile"


# instance fields
.field private final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lj1/q;-><init>(Ls1/c;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ls1/c;Ljava/lang/Object;)V
    .locals 1

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lj1/a;-><init>(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0, p1}, Lj1/a;->o(Ls1/c;)V

    .line 4
    iput-object p2, p0, Lj1/q;->i:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method c()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public h()Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lj1/a;->e:Ls1/c;

    iget-object v4, p0, Lj1/q;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lj1/a;->f()F

    move-result v5

    invoke-virtual {p0}, Lj1/a;->f()F

    move-result v6

    invoke-virtual {p0}, Lj1/a;->f()F

    move-result v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v4

    invoke-virtual/range {v0 .. v7}, Ls1/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method i(Ls1/a;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lj1/q;->h()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lj1/a;->e:Ls1/c;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lj1/a;->l()V

    :cond_0
    return-void
.end method

.method public n(F)V
    .locals 0

    iput p1, p0, Lj1/a;->d:F

    return-void
.end method
