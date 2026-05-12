.class Ld7/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld7/f$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/Choreographer;

.field private b:Landroid/view/Choreographer$FrameCallback;

.field private c:Z

.field private d:Ld7/f$a;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld7/e;

    invoke-direct {v0, p0}, Ld7/e;-><init>(Ld7/f;)V

    iput-object v0, p0, Ld7/f;->b:Landroid/view/Choreographer$FrameCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/f;->c:Z

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Ld7/f;->a:Landroid/view/Choreographer;

    return-void
.end method

.method public static synthetic a(Ld7/f;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ld7/f;->b(J)V

    return-void
.end method

.method private synthetic b(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ld7/f;->c(J)V

    return-void
.end method


# virtual methods
.method c(J)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/f;->c:Z

    iget-object v0, p0, Ld7/f;->d:Ld7/f$a;

    if-eqz v0, :cond_1

    invoke-static {}, La7/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doFrame ----------------------- frameTime =:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhysicsWorld-Frame"

    invoke-static {v1, v0}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Ld7/f;->d:Ld7/f$a;

    invoke-interface {p0, p1, p2}, Ld7/f$a;->doFrame(J)V

    :cond_1
    return-void
.end method

.method d()V
    .locals 2

    iget-boolean v0, p0, Ld7/f;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Ld7/f;->d:Ld7/f$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ld7/f;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Ld7/f;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    invoke-static {}, La7/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhysicsWorld-Frame"

    const-string v1, "scheduleNextFrame ----------------------- "

    invoke-static {v0, v1}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ld7/f;->c:Z

    :cond_1
    return-void
.end method

.method e(Ld7/f$a;)V
    .locals 0

    iput-object p1, p0, Ld7/f;->d:Ld7/f$a;

    return-void
.end method

.method f()V
    .locals 2

    iget-boolean v0, p0, Ld7/f;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, La7/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhysicsWorld-Frame"

    const-string v1, "unScheduleNextFrame ----------------------- "

    invoke-static {v0, v1}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Ld7/f;->a:Landroid/view/Choreographer;

    iget-object v1, p0, Ld7/f;->b:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/f;->c:Z

    :cond_1
    return-void
.end method
