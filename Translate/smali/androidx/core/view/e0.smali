.class public Landroidx/core/view/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/e0$b;,
        Landroidx/core/view/e0$d;,
        Landroidx/core/view/e0$c;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/view/e0$d;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Landroidx/core/view/e0$b;

    invoke-direct {v0, p1}, Landroidx/core/view/e0$b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/core/view/e0;->a:Landroidx/core/view/e0$d;

    goto :goto_0

    :cond_0
    new-instance p1, Landroidx/core/view/e0$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroidx/core/view/e0$c;-><init>(Landroidx/core/view/e0$a;)V

    iput-object p1, p0, Landroidx/core/view/e0;->a:Landroidx/core/view/e0$d;

    :goto_0
    return-void
.end method

.method public static a(Landroid/view/View;)Landroidx/core/view/e0;
    .locals 1

    new-instance v0, Landroidx/core/view/e0;

    invoke-direct {v0, p0}, Landroidx/core/view/e0;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public b(IIIZ)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/e0;->a:Landroidx/core/view/e0$d;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/e0$d;->a(IIIZ)V

    return-void
.end method

.method public c(IIII)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/e0;->a:Landroidx/core/view/e0$d;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/core/view/e0$d;->b(IIII)V

    return-void
.end method
