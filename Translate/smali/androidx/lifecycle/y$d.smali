.class abstract Landroidx/lifecycle/y$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "d"
.end annotation


# instance fields
.field final a:Landroidx/lifecycle/b0;

.field b:Z

.field c:I

.field final synthetic f:Landroidx/lifecycle/y;


# direct methods
.method constructor <init>(Landroidx/lifecycle/y;Landroidx/lifecycle/b0;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/y$d;->f:Landroidx/lifecycle/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroidx/lifecycle/y$d;->c:I

    iput-object p2, p0, Landroidx/lifecycle/y$d;->a:Landroidx/lifecycle/b0;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/lifecycle/y$d;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/y$d;->b:Z

    iget-object v0, p0, Landroidx/lifecycle/y$d;->f:Landroidx/lifecycle/y;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/lifecycle/y;->b(I)V

    iget-boolean p1, p0, Landroidx/lifecycle/y$d;->b:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/y$d;->f:Landroidx/lifecycle/y;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/y;->d(Landroidx/lifecycle/y$d;)V

    :cond_2
    return-void
.end method

.method b()V
    .locals 0

    return-void
.end method

.method c(Landroidx/lifecycle/s;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method abstract d()Z
.end method
