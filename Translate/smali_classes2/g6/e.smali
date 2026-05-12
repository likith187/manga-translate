.class public Lg6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/m;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/e;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ld6/a;
    .locals 2

    iget-object v0, p0, Lg6/e;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm6/c;

    invoke-virtual {v0}, Lm6/c;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ld6/k;

    iget-object p0, p0, Lg6/e;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Ld6/k;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_0
    new-instance v0, Ld6/j;

    iget-object p0, p0, Lg6/e;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Ld6/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lg6/e;->a:Ljava/util/List;

    return-object p0
.end method

.method public c()Z
    .locals 3

    iget-object v0, p0, Lg6/e;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lg6/e;->a:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm6/c;

    invoke-virtual {p0}, Lm6/c;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method
