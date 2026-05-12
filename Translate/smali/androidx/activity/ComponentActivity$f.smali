.class final Landroidx/activity/ComponentActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/ComponentActivity$e;
.implements Landroid/view/ViewTreeObserver$OnDrawListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/ComponentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
.end annotation


# instance fields
.field private final a:J

.field private b:Ljava/lang/Runnable;

.field private c:Z

.field final synthetic f:Landroidx/activity/ComponentActivity;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 4

    iput-object p1, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 p1, 0x2710

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/activity/ComponentActivity$f;->a:J

    return-void
.end method

.method public static synthetic a(Landroidx/activity/ComponentActivity$f;)V
    .locals 0

    invoke-static {p0}, Landroidx/activity/ComponentActivity$f;->b(Landroidx/activity/ComponentActivity$f;)V

    return-void
.end method

.method private static final b(Landroidx/activity/ComponentActivity$f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/ComponentActivity$f;->b:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/activity/ComponentActivity$f;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/activity/ComponentActivity$f;->c:Z

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/activity/ComponentActivity$f;->b:Ljava/lang/Runnable;

    iget-object p1, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "window.decorView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/activity/ComponentActivity$f;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/activity/j;

    invoke-direct {v0, p0}, Landroidx/activity/j;-><init>(Landroidx/activity/ComponentActivity$f;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onDraw()V
    .locals 6

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->b:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/activity/ComponentActivity$f;->b:Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->getFullyDrawnReporter()Landroidx/activity/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/activity/ComponentActivity$f;->c:Z

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroidx/activity/ComponentActivity$f;->a:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    iput-boolean v1, p0, Landroidx/activity/ComponentActivity$f;->c:Z

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/activity/ComponentActivity$f;->f:Landroidx/activity/ComponentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
