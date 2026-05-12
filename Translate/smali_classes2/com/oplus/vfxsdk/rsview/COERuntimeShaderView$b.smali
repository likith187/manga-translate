.class public final Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;->a:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;->a:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->c(J)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView$b;->a:Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;

    invoke-static {p1}, Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;->a(Lcom/oplus/vfxsdk/rsview/COERuntimeShaderView;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_0
    return-void
.end method
