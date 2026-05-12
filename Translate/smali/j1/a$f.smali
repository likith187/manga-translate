.class final Lj1/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj1/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Ls1/a;

.field private b:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lj1/a$f;->b:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a;

    iput-object p1, p0, Lj1/a$f;->a:Ls1/a;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget-object p0, p0, Lj1/a$f;->a:Ls1/a;

    invoke-virtual {p0}, Ls1/a;->c()F

    move-result p0

    return p0
.end method

.method public b(F)Z
    .locals 1

    iget v0, p0, Lj1/a$f;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Lj1/a$f;->b:F

    const/4 p0, 0x0

    return p0
.end method

.method public c()F
    .locals 0

    iget-object p0, p0, Lj1/a$f;->a:Ls1/a;

    invoke-virtual {p0}, Ls1/a;->f()F

    move-result p0

    return p0
.end method

.method public d()Ls1/a;
    .locals 0

    iget-object p0, p0, Lj1/a$f;->a:Ls1/a;

    return-object p0
.end method

.method public e(F)Z
    .locals 0

    iget-object p0, p0, Lj1/a$f;->a:Ls1/a;

    invoke-virtual {p0}, Ls1/a;->i()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
