.class public Lg6/a;
.super Lg6/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lg6/n;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ld6/a;
    .locals 1

    new-instance v0, Ld6/b;

    iget-object p0, p0, Lg6/n;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Ld6/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic b()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lg6/n;->b()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic c()Z
    .locals 0

    invoke-super {p0}, Lg6/n;->c()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lg6/n;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
