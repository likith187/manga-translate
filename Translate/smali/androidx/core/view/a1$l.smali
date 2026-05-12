.class Landroidx/core/view/a1$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# static fields
.field static final b:Landroidx/core/view/a1;


# instance fields
.field final a:Landroidx/core/view/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/core/view/a1$a;

    invoke-direct {v0}, Landroidx/core/view/a1$a;-><init>()V

    invoke-virtual {v0}, Landroidx/core/view/a1$a;->a()Landroidx/core/view/a1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/a1;->a()Landroidx/core/view/a1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/a1;->b()Landroidx/core/view/a1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/a1;->c()Landroidx/core/view/a1;

    move-result-object v0

    sput-object v0, Landroidx/core/view/a1$l;->b:Landroidx/core/view/a1;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a1$l;->a:Landroidx/core/view/a1;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$l;->a:Landroidx/core/view/a1;

    return-object p0
.end method

.method b()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$l;->a:Landroidx/core/view/a1;

    return-object p0
.end method

.method c()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$l;->a:Landroidx/core/view/a1;

    return-object p0
.end method

.method d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method e(Landroidx/core/view/a1;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/core/view/a1$l;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/core/view/a1$l;

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->p()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/a1$l;->p()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->o()Z

    move-result v1

    invoke-virtual {p1}, Landroidx/core/view/a1$l;->o()Z

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object v3

    invoke-static {v1, v3}, Lc0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->j()Lu/e;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/core/view/a1$l;->j()Lu/e;

    move-result-object v3

    invoke-static {v1, v3}, Lc0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->f()Landroidx/core/view/h;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/core/view/a1$l;->f()Landroidx/core/view/h;

    move-result-object p1

    invoke-static {p0, p1}, Lc0/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method f()Landroidx/core/view/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method g(I)Lu/e;
    .locals 0

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0
.end method

.method h(I)Lu/e;
    .locals 0

    and-int/lit8 p0, p1, 0x8

    if-nez p0, :cond_0

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to query the maximum insets for IME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 4

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->p()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->o()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->j()Lu/e;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->f()Landroidx/core/view/h;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lc0/c;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method i()Lu/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    return-object p0
.end method

.method j()Lu/e;
    .locals 0

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0
.end method

.method k()Lu/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    return-object p0
.end method

.method l()Lu/e;
    .locals 0

    sget-object p0, Lu/e;->e:Lu/e;

    return-object p0
.end method

.method m()Lu/e;
    .locals 0

    invoke-virtual {p0}, Landroidx/core/view/a1$l;->l()Lu/e;

    move-result-object p0

    return-object p0
.end method

.method n(IIII)Landroidx/core/view/a1;
    .locals 0

    sget-object p0, Landroidx/core/view/a1$l;->b:Landroidx/core/view/a1;

    return-object p0
.end method

.method o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method p()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method q(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public r([Lu/e;)V
    .locals 0

    return-void
.end method

.method s(Lu/e;)V
    .locals 0

    return-void
.end method

.method t(Landroidx/core/view/a1;)V
    .locals 0

    return-void
.end method

.method u(I)V
    .locals 0

    return-void
.end method
