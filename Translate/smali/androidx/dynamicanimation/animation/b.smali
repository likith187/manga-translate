.class public Landroidx/dynamicanimation/animation/b;
.super Landroidx/dynamicanimation/animation/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/dynamicanimation/animation/b$a;
    }
.end annotation


# instance fields
.field private final A:Landroidx/dynamicanimation/animation/b$a;

.field private B:F

.field private C:F

.field private D:J

.field private E:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/dynamicanimation/animation/c;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/d;)V

    new-instance p1, Landroidx/dynamicanimation/animation/b$a;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/b$a;-><init>()V

    iput-object p1, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    const/4 p2, 0x0

    iput p2, p0, Landroidx/dynamicanimation/animation/b;->B:F

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, Landroidx/dynamicanimation/animation/b;->C:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/b;->D:J

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/b;->E:J

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/c;->f()F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/dynamicanimation/animation/b$a;->j(F)V

    return-void
.end method


# virtual methods
.method o(F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/b$a;->j(F)V

    return-void
.end method

.method public p()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/dynamicanimation/animation/b;->D:J

    iget-object v2, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    invoke-static {v2, v0, v1}, Landroidx/dynamicanimation/animation/b$a;->a(Landroidx/dynamicanimation/animation/b$a;J)J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    iget-wide v1, p0, Landroidx/dynamicanimation/animation/b;->D:J

    iget-wide v3, p0, Landroidx/dynamicanimation/animation/b;->E:J

    add-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Landroidx/dynamicanimation/animation/b$a;->b(Landroidx/dynamicanimation/animation/b$a;J)J

    iget-object v0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    iget v1, p0, Landroidx/dynamicanimation/animation/b;->B:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/b$a;->c(Landroidx/dynamicanimation/animation/b$a;F)F

    iget-object v0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    iget v1, p0, Landroidx/dynamicanimation/animation/b;->C:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/b$a;->d(Landroidx/dynamicanimation/animation/b$a;F)F

    iget-object v0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/b$a;->e(Landroidx/dynamicanimation/animation/b$a;F)F

    iget-object v0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    iget v1, p0, Landroidx/dynamicanimation/animation/c;->g:F

    invoke-static {v0, v1}, Landroidx/dynamicanimation/animation/b$a;->f(Landroidx/dynamicanimation/animation/b$a;F)F

    invoke-super {p0}, Landroidx/dynamicanimation/animation/c;->p()V

    return-void
.end method

.method r(J)Z
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    iget v1, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget v2, p0, Landroidx/dynamicanimation/animation/c;->a:F

    move-wide v3, v7

    move-wide v5, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/dynamicanimation/animation/b$a;->k(FFJJ)Landroidx/dynamicanimation/animation/c$p;

    move-result-object p1

    iget p2, p1, Landroidx/dynamicanimation/animation/c$p;->a:F

    iput p2, p0, Landroidx/dynamicanimation/animation/c;->b:F

    iget p1, p1, Landroidx/dynamicanimation/animation/c$p;->b:F

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->a:F

    iget v0, p0, Landroidx/dynamicanimation/animation/b;->C:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-ltz v1, :cond_1

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Landroidx/dynamicanimation/animation/b;->D:J

    iget-wide v3, p0, Landroidx/dynamicanimation/animation/b;->E:J

    add-long/2addr v0, v3

    cmp-long v0, v7, v0

    if-ltz v0, :cond_1

    :cond_0
    iget p1, p0, Landroidx/dynamicanimation/animation/c;->g:F

    iput p1, p0, Landroidx/dynamicanimation/animation/c;->b:F

    return v2

    :cond_1
    iget v0, p0, Landroidx/dynamicanimation/animation/c;->h:F

    cmpg-float v1, p2, v0

    if-gez v1, :cond_2

    iput v0, p0, Landroidx/dynamicanimation/animation/c;->b:F

    return v2

    :cond_2
    iget v0, p0, Landroidx/dynamicanimation/animation/c;->g:F

    cmpl-float v1, p2, v0

    if-lez v1, :cond_3

    iput v0, p0, Landroidx/dynamicanimation/animation/c;->b:F

    return v2

    :cond_3
    invoke-virtual {p0, p2, p1}, Landroidx/dynamicanimation/animation/b;->s(FF)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method s(FF)Z
    .locals 1

    iget v0, p0, Landroidx/dynamicanimation/animation/c;->g:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroidx/dynamicanimation/animation/c;->h:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object p0, p0, Landroidx/dynamicanimation/animation/b;->A:Landroidx/dynamicanimation/animation/b$a;

    invoke-virtual {p0, p1, p2}, Landroidx/dynamicanimation/animation/b$a;->i(FF)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public t(F)Landroidx/dynamicanimation/animation/b;
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iput p1, p0, Landroidx/dynamicanimation/animation/b;->C:F

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Velocity must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public u(F)Landroidx/dynamicanimation/animation/b;
    .locals 0

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/c;->i(F)Landroidx/dynamicanimation/animation/c;

    return-object p0
.end method

.method public v(F)Landroidx/dynamicanimation/animation/b;
    .locals 0

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/c;->j(F)Landroidx/dynamicanimation/animation/c;

    return-object p0
.end method

.method public w(F)Landroidx/dynamicanimation/animation/b;
    .locals 0

    invoke-super {p0, p1}, Landroidx/dynamicanimation/animation/c;->n(F)Landroidx/dynamicanimation/animation/c;

    iput p1, p0, Landroidx/dynamicanimation/animation/b;->B:F

    return-object p0
.end method
