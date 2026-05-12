.class public Lq/b;
.super Landroidx/constraintlayout/motion/widget/n;
.source "SourceFile"


# instance fields
.field private a:Lm/n;

.field private b:Lm/k;

.field private c:Lm/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/n;-><init>()V

    new-instance v0, Lm/n;

    invoke-direct {v0}, Lm/n;-><init>()V

    iput-object v0, p0, Lq/b;->a:Lm/n;

    iput-object v0, p0, Lq/b;->c:Lm/m;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget-object p0, p0, Lq/b;->c:Lm/m;

    invoke-interface {p0}, Lm/m;->b()F

    move-result p0

    return p0
.end method

.method public b(FFFFFF)V
    .locals 7

    iget-object v0, p0, Lq/b;->a:Lm/n;

    iput-object v0, p0, Lq/b;->c:Lm/m;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lm/n;->d(FFFFFF)V

    return-void
.end method

.method public c()Z
    .locals 0

    iget-object p0, p0, Lq/b;->c:Lm/m;

    invoke-interface {p0}, Lm/m;->a()Z

    move-result p0

    return p0
.end method

.method public d(FFFFFFFI)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lq/b;->b:Lm/k;

    if-nez v1, :cond_0

    new-instance v1, Lm/k;

    invoke-direct {v1}, Lm/k;-><init>()V

    iput-object v1, v0, Lq/b;->b:Lm/k;

    :cond_0
    iget-object v2, v0, Lq/b;->b:Lm/k;

    iput-object v2, v0, Lq/b;->c:Lm/m;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v2 .. v10}, Lm/k;->d(FFFFFFFI)V

    return-void
.end method

.method public getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lq/b;->c:Lm/m;

    invoke-interface {p0, p1}, Lm/m;->getInterpolation(F)F

    move-result p0

    return p0
.end method
