.class final Ld6/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld6/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final a:Lm6/c;

.field private b:F


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Ld6/a$f;->b:F

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm6/c;

    iput-object p1, p0, Ld6/a$f;->a:Lm6/c;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget-object p0, p0, Ld6/a$f;->a:Lm6/c;

    invoke-virtual {p0}, Lm6/c;->c()F

    move-result p0

    return p0
.end method

.method public b(F)Z
    .locals 1

    iget v0, p0, Ld6/a$f;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iput p1, p0, Ld6/a$f;->b:F

    const/4 p0, 0x0

    return p0
.end method

.method public c()F
    .locals 0

    iget-object p0, p0, Ld6/a$f;->a:Lm6/c;

    invoke-virtual {p0}, Lm6/c;->f()F

    move-result p0

    return p0
.end method

.method public d()Lm6/c;
    .locals 0

    iget-object p0, p0, Ld6/a$f;->a:Lm6/c;

    return-object p0
.end method

.method public e(F)Z
    .locals 0

    iget-object p0, p0, Ld6/a$f;->a:Lm6/c;

    invoke-virtual {p0}, Lm6/c;->i()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
