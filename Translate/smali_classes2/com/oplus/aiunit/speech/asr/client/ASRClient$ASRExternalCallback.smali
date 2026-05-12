.class public interface abstract Lcom/oplus/aiunit/speech/asr/client/ASRClient$ASRExternalCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/speech/asr/client/ASRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ASRExternalCallback"
.end annotation


# virtual methods
.method public abstract dropOfflineData()V
.end method

.method public abstract onHistory(ILjava/lang/String;Z)V
.end method

.method public abstract onResult(ILjava/lang/String;Z)V
.end method

.method public abstract taskComplete(I)V
.end method
