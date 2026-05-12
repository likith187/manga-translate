.class public final Lcom/oplus/vfxsdk/common/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/common/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/common/d;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/common/d;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/d$a;->a:Lcom/oplus/vfxsdk/common/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/d$a;->a:Lcom/oplus/vfxsdk/common/d;

    invoke-static {v0}, Lcom/oplus/vfxsdk/common/d;->a(Lcom/oplus/vfxsdk/common/d;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcom/oplus/vfxsdk/common/d$a;->a:Lcom/oplus/vfxsdk/common/d;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/vfxsdk/common/d;->c(J)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/common/d$a;->a:Lcom/oplus/vfxsdk/common/d;

    invoke-static {p1}, Lcom/oplus/vfxsdk/common/d;->b(Lcom/oplus/vfxsdk/common/d;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
