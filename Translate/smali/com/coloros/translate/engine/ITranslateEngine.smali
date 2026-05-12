.class public interface abstract Lcom/coloros/translate/engine/ITranslateEngine;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/ITranslateEngine$a;,
        Lcom/coloros/translate/engine/ITranslateEngine$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.translate.engine.ITranslateEngine"


# virtual methods
.method public abstract existsOfflinePackage(Ljava/lang/String;Ljava/lang/String;)Z
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

.method public abstract translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/coloros/translate/engine/ITranslateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract translateList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/coloros/translate/engine/ITranslateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/coloros/translate/engine/ITranslateListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
