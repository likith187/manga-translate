.class public final Landroidx/core/view/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/core/view/a1$e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/core/view/a1$d;

    invoke-direct {v0}, Landroidx/core/view/a1$d;-><init>()V

    iput-object v0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/core/view/a1$c;

    invoke-direct {v0}, Landroidx/core/view/a1$c;-><init>()V

    iput-object v0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/view/a1;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 7
    new-instance v0, Landroidx/core/view/a1$d;

    invoke-direct {v0, p1}, Landroidx/core/view/a1$d;-><init>(Landroidx/core/view/a1;)V

    iput-object v0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Landroidx/core/view/a1$c;

    invoke-direct {v0, p1}, Landroidx/core/view/a1$c;-><init>(Landroidx/core/view/a1;)V

    iput-object v0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/view/a1;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    invoke-virtual {p0}, Landroidx/core/view/a1$e;->b()Landroidx/core/view/a1;

    move-result-object p0

    return-object p0
.end method

.method public b(Lu/e;)Landroidx/core/view/a1$a;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/a1$e;->d(Lu/e;)V

    return-object p0
.end method

.method public c(Lu/e;)Landroidx/core/view/a1$a;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/a1$a;->a:Landroidx/core/view/a1$e;

    invoke-virtual {v0, p1}, Landroidx/core/view/a1$e;->f(Lu/e;)V

    return-object p0
.end method
