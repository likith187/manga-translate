.class public interface abstract Lcom/coloros/translate/engine/ITranslateServiceBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/ITranslateServiceBinder$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.coloros.translate.engine.ITranslateServiceBinder"


# virtual methods
.method public abstract generateOfflineTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
