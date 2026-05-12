.class public final Landroidx/core/view/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/z0$c;,
        Landroidx/core/view/z0$d;,
        Landroidx/core/view/z0$b;,
        Landroidx/core/view/z0$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/core/view/z0$d;


# direct methods
.method public constructor <init>(ILandroid/view/animation/Interpolator;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/core/view/z0$c;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/core/view/z0$c;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v0, p0, Landroidx/core/view/z0;->a:Landroidx/core/view/z0$d;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsetsAnimation;)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 3
    invoke-direct {p0, v3, v0, v1, v2}, Landroidx/core/view/z0;-><init>(ILandroid/view/animation/Interpolator;J)V

    .line 4
    new-instance v0, Landroidx/core/view/z0$c;

    invoke-direct {v0, p1}, Landroidx/core/view/z0$c;-><init>(Landroid/view/WindowInsetsAnimation;)V

    iput-object v0, p0, Landroidx/core/view/z0;->a:Landroidx/core/view/z0$d;

    return-void
.end method

.method static d(Landroid/view/View;Landroidx/core/view/z0$b;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/core/view/z0$c;->h(Landroid/view/View;Landroidx/core/view/z0$b;)V

    return-void
.end method

.method static f(Landroid/view/WindowInsetsAnimation;)Landroidx/core/view/z0;
    .locals 1

    new-instance v0, Landroidx/core/view/z0;

    invoke-direct {v0, p0}, Landroidx/core/view/z0;-><init>(Landroid/view/WindowInsetsAnimation;)V

    return-object v0
.end method


# virtual methods
.method public a()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/z0;->a:Landroidx/core/view/z0$d;

    invoke-virtual {p0}, Landroidx/core/view/z0$d;->a()F

    move-result p0

    return p0
.end method

.method public b()F
    .locals 0

    iget-object p0, p0, Landroidx/core/view/z0;->a:Landroidx/core/view/z0$d;

    invoke-virtual {p0}, Landroidx/core/view/z0$d;->b()F

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    iget-object p0, p0, Landroidx/core/view/z0;->a:Landroidx/core/view/z0$d;

    invoke-virtual {p0}, Landroidx/core/view/z0$d;->c()I

    move-result p0

    return p0
.end method

.method public e(F)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/z0;->a:Landroidx/core/view/z0$d;

    invoke-virtual {p0, p1}, Landroidx/core/view/z0$d;->d(F)V

    return-void
.end method
