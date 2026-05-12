.class public Ld7/k;
.super Ld7/j;
.source "SourceFile"


# instance fields
.field f:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    const-string v0, "floatValue"

    invoke-direct {p0, v0, p1}, Ld7/k;-><init>(Ljava/lang/String;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-direct {p0, p1, p2, v0}, Ld7/k;-><init>(Ljava/lang/String;FF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p3}, Ld7/j;-><init>(Ljava/lang/String;F)V

    .line 4
    iput p2, p0, Ld7/k;->f:F

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Ld7/n;

    invoke-virtual {p0, p1}, Ld7/k;->g(Ld7/n;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Ld7/n;

    invoke-virtual {p0, p1, p2}, Ld7/k;->h(Ld7/n;F)V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ld7/n;

    invoke-virtual {p0, p1}, Ld7/k;->i(Ld7/n;)V

    return-void
.end method

.method public bridge synthetic f(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ld7/n;

    invoke-virtual {p0, p1}, Ld7/k;->j(Ld7/n;)V

    return-void
.end method

.method public g(Ld7/n;)F
    .locals 0

    iget p0, p0, Ld7/k;->f:F

    return p0
.end method

.method public h(Ld7/n;F)V
    .locals 0

    iput p2, p0, Ld7/k;->f:F

    return-void
.end method

.method public i(Ld7/n;)V
    .locals 1

    iget-object v0, p1, Ld7/n;->h:Ld7/m;

    iget v0, v0, Ld7/m;->a:F

    invoke-virtual {p0, p1, v0}, Ld7/j;->d(Ljava/lang/Object;F)V

    return-void
.end method

.method public j(Ld7/n;)V
    .locals 0

    invoke-super {p0, p1}, Ld7/j;->f(Ljava/lang/Object;)V

    iget-object p1, p1, Ld7/n;->e:La7/e;

    iget p0, p0, Ld7/j;->d:F

    iput p0, p1, La7/e;->a:F

    return-void
.end method
