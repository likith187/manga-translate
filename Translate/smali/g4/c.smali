.class public final Lg4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg4/c$b;,
        Lg4/c$c;,
        Lg4/c$d;
    }
.end annotation


# instance fields
.field private final a:Lg4/c$d;

.field private final b:Lg4/b;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lg4/b;

    invoke-direct {p0, v0, p1}, Lg4/c;-><init>(Lg4/b;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lg4/b;Landroid/view/View;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lg4/c;->a()Lg4/c$d;

    move-result-object v0

    iput-object v0, p0, Lg4/c;->a:Lg4/c$d;

    .line 4
    iput-object p1, p0, Lg4/c;->b:Lg4/b;

    .line 5
    iput-object p2, p0, Lg4/c;->c:Landroid/view/View;

    return-void
.end method

.method private static a()Lg4/c$d;
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    new-instance v0, Lg4/c$c;

    invoke-direct {v0, v2}, Lg4/c$c;-><init>(Lg4/c$a;)V

    return-object v0

    :cond_0
    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    new-instance v0, Lg4/c$b;

    invoke-direct {v0, v2}, Lg4/c$b;-><init>(Lg4/c$a;)V

    return-object v0

    :cond_1
    return-object v2
.end method

.method private d(Z)V
    .locals 2

    iget-object v0, p0, Lg4/c;->a:Lg4/c$d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg4/c;->b:Lg4/b;

    iget-object p0, p0, Lg4/c;->c:Landroid/view/View;

    invoke-interface {v0, v1, p0, p1}, Lg4/c$d;->a(Lg4/b;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 0

    iget-object p0, p0, Lg4/c;->a:Lg4/c$d;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lg4/c;->d(Z)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lg4/c;->d(Z)V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lg4/c;->a:Lg4/c$d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg4/c;->c:Landroid/view/View;

    invoke-interface {v0, p0}, Lg4/c$d;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method
