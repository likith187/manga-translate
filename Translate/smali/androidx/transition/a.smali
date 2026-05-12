.class public Landroidx/transition/a;
.super Landroidx/transition/t;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/t;-><init>()V

    invoke-direct {p0}, Landroidx/transition/a;->N()V

    return-void
.end method

.method private N()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/transition/t;->K(I)Landroidx/transition/t;

    new-instance v1, Landroidx/transition/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/transition/c;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/t;->y(Landroidx/transition/j;)Landroidx/transition/t;

    move-result-object p0

    new-instance v1, Landroidx/transition/b;

    invoke-direct {v1}, Landroidx/transition/b;-><init>()V

    invoke-virtual {p0, v1}, Landroidx/transition/t;->y(Landroidx/transition/j;)Landroidx/transition/t;

    move-result-object p0

    new-instance v1, Landroidx/transition/c;

    invoke-direct {v1, v0}, Landroidx/transition/c;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/transition/t;->y(Landroidx/transition/j;)Landroidx/transition/t;

    return-void
.end method
