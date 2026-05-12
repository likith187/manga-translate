.class public final Landroidx/lifecycle/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/e0$a;,
        Landroidx/lifecycle/e0$b;
    }
.end annotation


# static fields
.field public static final l:Landroidx/lifecycle/e0$b;

.field private static final m:Landroidx/lifecycle/e0;


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private f:Z

.field private h:Landroid/os/Handler;

.field private final i:Landroidx/lifecycle/u;

.field private final j:Ljava/lang/Runnable;

.field private final k:Landroidx/lifecycle/ReportFragment$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/lifecycle/e0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/e0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/lifecycle/e0;->l:Landroidx/lifecycle/e0$b;

    new-instance v0, Landroidx/lifecycle/e0;

    invoke-direct {v0}, Landroidx/lifecycle/e0;-><init>()V

    sput-object v0, Landroidx/lifecycle/e0;->m:Landroidx/lifecycle/e0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/e0;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/e0;->f:Z

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0, p0}, Landroidx/lifecycle/u;-><init>(Landroidx/lifecycle/s;)V

    iput-object v0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    new-instance v0, Landroidx/lifecycle/d0;

    invoke-direct {v0, p0}, Landroidx/lifecycle/d0;-><init>(Landroidx/lifecycle/e0;)V

    iput-object v0, p0, Landroidx/lifecycle/e0;->j:Ljava/lang/Runnable;

    new-instance v0, Landroidx/lifecycle/e0$d;

    invoke-direct {v0, p0}, Landroidx/lifecycle/e0$d;-><init>(Landroidx/lifecycle/e0;)V

    iput-object v0, p0, Landroidx/lifecycle/e0;->k:Landroidx/lifecycle/ReportFragment$a;

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/e0;)V
    .locals 0

    invoke-static {p0}, Landroidx/lifecycle/e0;->h(Landroidx/lifecycle/e0;)V

    return-void
.end method

.method public static final synthetic b()Landroidx/lifecycle/e0;
    .locals 1

    sget-object v0, Landroidx/lifecycle/e0;->m:Landroidx/lifecycle/e0;

    return-object v0
.end method

.method private static final h(Landroidx/lifecycle/e0;)V
    .locals 0

    invoke-virtual {p0}, Landroidx/lifecycle/e0;->i()V

    invoke-virtual {p0}, Landroidx/lifecycle/e0;->j()V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Landroidx/lifecycle/e0;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/e0;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/e0;->h:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/e0;->j:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/e0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/e0;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/e0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    sget-object v1, Landroidx/lifecycle/l$a;->ON_RESUME:Landroidx/lifecycle/l$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/e0;->c:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/e0;->h:Landroid/os/Handler;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/lifecycle/e0;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/e0;->a:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/e0;->a:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/e0;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    sget-object v1, Landroidx/lifecycle/l$a;->ON_START:Landroidx/lifecycle/l$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/e0;->f:Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/e0;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/lifecycle/e0;->a:I

    invoke-virtual {p0}, Landroidx/lifecycle/e0;->j()V

    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/e0;->h:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    sget-object v1, Landroidx/lifecycle/l$a;->ON_CREATE:Landroidx/lifecycle/l$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.app.Application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Application;

    new-instance v0, Landroidx/lifecycle/e0$c;

    invoke-direct {v0, p0}, Landroidx/lifecycle/e0$c;-><init>(Landroidx/lifecycle/e0;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public getLifecycle()Landroidx/lifecycle/l;
    .locals 0

    iget-object p0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    return-object p0
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Landroidx/lifecycle/e0;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/e0;->c:Z

    iget-object p0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    sget-object v0, Landroidx/lifecycle/l$a;->ON_PAUSE:Landroidx/lifecycle/l$a;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/e0;->a:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/lifecycle/e0;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/e0;->i:Landroidx/lifecycle/u;

    sget-object v1, Landroidx/lifecycle/l$a;->ON_STOP:Landroidx/lifecycle/l$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/u;->i(Landroidx/lifecycle/l$a;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/e0;->f:Z

    :cond_0
    return-void
.end method
