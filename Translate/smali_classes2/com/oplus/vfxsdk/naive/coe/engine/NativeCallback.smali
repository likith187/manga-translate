.class public interface abstract Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# virtual methods
.method public abstract getID()I
.end method

.method public abstract onAnimEnd(Ljava/lang/String;)V
.end method

.method public abstract onAnimStart(Ljava/lang/String;)V
.end method

.method public varargs abstract onAnimUpdate(Ljava/lang/String;D[F)V
.end method

.method public abstract onEvent(Lcom/oplus/vfxsdk/naive/coe/engine/Event/Event;)V
.end method

.method public onRenderQuit()V
    .locals 0

    return-void
.end method

.method public onRenderStart()V
    .locals 0

    return-void
.end method

.method public abstract onStart()V
.end method

.method public abstract onUpdate(D)V
.end method
