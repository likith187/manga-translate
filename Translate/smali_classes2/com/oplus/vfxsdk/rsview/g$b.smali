.class public final Lcom/oplus/vfxsdk/rsview/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/rsview/g;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/oplus/vfxsdk/rsview/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/rsview/g;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/rsview/g;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/g$b;->a:Lcom/oplus/vfxsdk/rsview/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    iget-object p1, p0, Lcom/oplus/vfxsdk/rsview/g$b;->a:Lcom/oplus/vfxsdk/rsview/g;

    invoke-static {p1}, Lcom/oplus/vfxsdk/rsview/g;->b(Lcom/oplus/vfxsdk/rsview/g;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/oplus/vfxsdk/rsview/g$b;->a:Lcom/oplus/vfxsdk/rsview/g;

    invoke-static {p2}, Lcom/oplus/vfxsdk/rsview/g;->a(Lcom/oplus/vfxsdk/rsview/g;)Lcom/oplus/vfxsdk/rsview/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/rsview/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    invoke-static {p2}, Lcom/oplus/vfxsdk/rsview/g;->c(Lcom/oplus/vfxsdk/rsview/g;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method
