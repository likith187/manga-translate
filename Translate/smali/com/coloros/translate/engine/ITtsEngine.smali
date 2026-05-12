.class public interface abstract Lcom/coloros/translate/engine/ITtsEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/ITtsEngine$a;,
        Lcom/coloros/translate/engine/ITtsEngine$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.translate.engine.ITtsEngine"


# virtual methods
.method public abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract playText(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/engine/ITtsListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract playTextWithExtra(Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Landroid/os/Bundle;Lcom/coloros/translate/engine/ITtsListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopPlay()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
