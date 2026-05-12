.class public Lg6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/m;


# instance fields
.field private final a:Lg6/b;

.field private final b:Lg6/b;


# direct methods
.method public constructor <init>(Lg6/b;Lg6/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/i;->a:Lg6/b;

    iput-object p2, p0, Lg6/i;->b:Lg6/b;

    return-void
.end method


# virtual methods
.method public a()Ld6/a;
    .locals 2

    new-instance v0, Ld6/n;

    iget-object v1, p0, Lg6/i;->a:Lg6/b;

    invoke-virtual {v1}, Lg6/b;->a()Ld6/a;

    move-result-object v1

    iget-object p0, p0, Lg6/i;->b:Lg6/b;

    invoke-virtual {p0}, Lg6/b;->a()Ld6/a;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ld6/n;-><init>(Ld6/a;Ld6/a;)V

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot call getKeyframes on AnimatableSplitDimensionPathValue."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lg6/i;->a:Lg6/b;

    invoke-virtual {v0}, Lg6/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg6/i;->b:Lg6/b;

    invoke-virtual {p0}, Lg6/b;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
