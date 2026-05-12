.class abstract Landroidx/core/view/a1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/a1;

.field b:[Lu/e;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/a1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/core/view/a1;-><init>(Landroidx/core/view/a1;)V

    invoke-direct {p0, v0}, Landroidx/core/view/a1$e;-><init>(Landroidx/core/view/a1;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/view/a1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/core/view/a1$e;->a:Landroidx/core/view/a1;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 5

    iget-object v0, p0, Landroidx/core/view/a1$e;->b:[Lu/e;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Landroidx/core/view/a1$m;->b(I)I

    move-result v2

    aget-object v0, v0, v2

    iget-object v2, p0, Landroidx/core/view/a1$e;->b:[Lu/e;

    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/core/view/a1$m;->b(I)I

    move-result v4

    aget-object v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/core/view/a1$e;->a:Landroidx/core/view/a1;

    invoke-virtual {v2, v3}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/core/view/a1$e;->a:Landroidx/core/view/a1;

    invoke-virtual {v0, v1}, Landroidx/core/view/a1;->f(I)Lu/e;

    move-result-object v0

    :cond_1
    invoke-static {v0, v2}, Lu/e;->a(Lu/e;Lu/e;)Lu/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/view/a1$e;->f(Lu/e;)V

    iget-object v0, p0, Landroidx/core/view/a1$e;->b:[Lu/e;

    const/16 v1, 0x10

    invoke-static {v1}, Landroidx/core/view/a1$m;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/core/view/a1$e;->e(Lu/e;)V

    :cond_2
    iget-object v0, p0, Landroidx/core/view/a1$e;->b:[Lu/e;

    const/16 v1, 0x20

    invoke-static {v1}, Landroidx/core/view/a1$m;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroidx/core/view/a1$e;->c(Lu/e;)V

    :cond_3
    iget-object v0, p0, Landroidx/core/view/a1$e;->b:[Lu/e;

    const/16 v1, 0x40

    invoke-static {v1}, Landroidx/core/view/a1$m;->b(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroidx/core/view/a1$e;->g(Lu/e;)V

    :cond_4
    return-void
.end method

.method abstract b()Landroidx/core/view/a1;
.end method

.method abstract c(Lu/e;)V
.end method

.method abstract d(Lu/e;)V
.end method

.method abstract e(Lu/e;)V
.end method

.method abstract f(Lu/e;)V
.end method

.method abstract g(Lu/e;)V
.end method
