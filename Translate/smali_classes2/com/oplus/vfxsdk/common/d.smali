.class public final Lcom/oplus/vfxsdk/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private d:Ljava/util/ArrayList;

.field private final e:Lcom/oplus/vfxsdk/common/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AnimatorHandler"

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/d;->d:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/vfxsdk/common/d$a;

    invoke-direct {v0, p0}, Lcom/oplus/vfxsdk/common/d$a;-><init>(Lcom/oplus/vfxsdk/common/d;)V

    iput-object v0, p0, Lcom/oplus/vfxsdk/common/d;->e:Lcom/oplus/vfxsdk/common/d$a;

    return-void
.end method

.method public static final synthetic a(Lcom/oplus/vfxsdk/common/d;)J
    .locals 2

    iget-wide v0, p0, Lcom/oplus/vfxsdk/common/d;->c:J

    return-wide v0
.end method

.method public static final synthetic b(Lcom/oplus/vfxsdk/common/d;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/vfxsdk/common/d;->b:Z

    return p0
.end method


# virtual methods
.method public final c(J)V
    .locals 1

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/p;

    invoke-interface {v0, p1, p2}, Lcom/oplus/vfxsdk/common/p;->doFrame(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/common/d;->b:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/vfxsdk/common/d;->c:J

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/d;->e:Lcom/oplus/vfxsdk/common/d$a;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final e(Lcom/oplus/vfxsdk/common/p;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/d;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/d;->g()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/common/d;->b:Z

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/d;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/vfxsdk/common/d;->e:Lcom/oplus/vfxsdk/common/d$a;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
