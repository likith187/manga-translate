.class final Lcom/oplus/vfxsdk/common/Animator$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/oplus/vfxsdk/common/Animator;)V
    .locals 1

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/Animator$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Animator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    long-to-double p1, p1

    const-wide v1, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p1, v1

    invoke-static {v0, p1, p2}, Lcom/oplus/vfxsdk/common/Animator;->access$frameUpdate(Lcom/oplus/vfxsdk/common/Animator;D)V

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/Animator;->isPlay()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method
