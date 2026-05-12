.class Landroidx/transition/t$c;
.super Landroidx/transition/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/transition/t;


# direct methods
.method constructor <init>(Landroidx/transition/t;)V
    .locals 0

    invoke-direct {p0}, Landroidx/transition/p;-><init>()V

    iput-object p1, p0, Landroidx/transition/t$c;->a:Landroidx/transition/t;

    return-void
.end method


# virtual methods
.method public a(Landroidx/transition/j;)V
    .locals 1

    iget-object p1, p0, Landroidx/transition/t$c;->a:Landroidx/transition/t;

    iget-boolean v0, p1, Landroidx/transition/t;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/transition/j;->start()V

    iget-object p0, p0, Landroidx/transition/t$c;->a:Landroidx/transition/t;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/t;->f:Z

    :cond_0
    return-void
.end method

.method public g(Landroidx/transition/j;)V
    .locals 2

    iget-object v0, p0, Landroidx/transition/t$c;->a:Landroidx/transition/t;

    iget v1, v0, Landroidx/transition/t;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/t;->c:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/transition/t;->f:Z

    invoke-virtual {v0}, Landroidx/transition/j;->end()V

    :cond_0
    invoke-virtual {p1, p0}, Landroidx/transition/j;->removeListener(Landroidx/transition/j$i;)Landroidx/transition/j;

    return-void
.end method
