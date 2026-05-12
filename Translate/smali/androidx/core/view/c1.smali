.class public final Landroidx/core/view/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/c1$c;,
        Landroidx/core/view/c1$d;,
        Landroidx/core/view/c1$a;,
        Landroidx/core/view/c1$b;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/view/c1$d;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Landroidx/core/view/h0;

    invoke-direct {v0, p2}, Landroidx/core/view/h0;-><init>(Landroid/view/View;)V

    .line 7
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt p2, v1, :cond_0

    .line 8
    new-instance p2, Landroidx/core/view/c1$c;

    invoke-direct {p2, p1, p0, v0}, Landroidx/core/view/c1$c;-><init>(Landroid/view/Window;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    iput-object p2, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p2, Landroidx/core/view/c1$a;

    invoke-direct {p2, p1, p0, v0}, Landroidx/core/view/c1$a;-><init>(Landroid/view/Window;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    iput-object p2, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsController;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Landroidx/core/view/c1$c;

    new-instance v1, Landroidx/core/view/h0;

    invoke-direct {v1, p1}, Landroidx/core/view/h0;-><init>(Landroid/view/WindowInsetsController;)V

    invoke-direct {v0, p1, p0, v1}, Landroidx/core/view/c1$c;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    iput-object v0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroidx/core/view/c1$a;

    new-instance v1, Landroidx/core/view/h0;

    invoke-direct {v1, p1}, Landroidx/core/view/h0;-><init>(Landroid/view/WindowInsetsController;)V

    invoke-direct {v0, p1, p0, v1}, Landroidx/core/view/c1$a;-><init>(Landroid/view/WindowInsetsController;Landroidx/core/view/c1;Landroidx/core/view/h0;)V

    iput-object v0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    :goto_0
    return-void
.end method

.method public static f(Landroid/view/WindowInsetsController;)Landroidx/core/view/c1;
    .locals 1

    new-instance v0, Landroidx/core/view/c1;

    invoke-direct {v0, p0}, Landroidx/core/view/c1;-><init>(Landroid/view/WindowInsetsController;)V

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    invoke-virtual {p0, p1}, Landroidx/core/view/c1$d;->a(I)V

    return-void
.end method

.method public b()Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    invoke-virtual {p0}, Landroidx/core/view/c1$d;->b()Z

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    invoke-virtual {p0, p1}, Landroidx/core/view/c1$d;->c(Z)V

    return-void
.end method

.method public d(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    invoke-virtual {p0, p1}, Landroidx/core/view/c1$d;->d(Z)V

    return-void
.end method

.method public e(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/c1;->a:Landroidx/core/view/c1$d;

    invoke-virtual {p0, p1}, Landroidx/core/view/c1$d;->e(I)V

    return-void
.end method
