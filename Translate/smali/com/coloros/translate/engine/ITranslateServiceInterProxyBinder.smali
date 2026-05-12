.class public interface abstract Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder$a;,
        Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.translate.engine.ITranslateServiceInterProxyBinder"


# virtual methods
.method public abstract clearMap(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateOfflineTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateRtasrEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract generateTtsEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerClient(Lcom/coloros/translate/engine/IRegisterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerLLMClient(Lcom/coloros/translate/engine/IRegisterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEngineAutoDestroyWhenBinderDied(Lcom/coloros/translate/engine/IRegisterListener;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterClient(Lcom/coloros/translate/engine/IRegisterListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
