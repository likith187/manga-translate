.class public Lm1/j;
.super Lm1/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lm1/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lj1/a;
    .locals 0

    invoke-virtual {p0}, Lm1/j;->d()Lj1/o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lm1/n;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c()Z
    .locals 0

    invoke-super {p0}, Lm1/n;->c()Z

    move-result p0

    return p0
.end method

.method public d()Lj1/o;
    .locals 1

    new-instance v0, Lj1/o;

    iget-object p0, p0, Lm1/n;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lj1/o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lm1/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
