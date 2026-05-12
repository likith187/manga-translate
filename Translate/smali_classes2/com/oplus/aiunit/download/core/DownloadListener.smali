.class public interface abstract Lcom/oplus/aiunit/download/core/DownloadListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/download/core/DownloadListener$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onFail(I)V
.end method

.method public abstract onInstall()V
.end method

.method public abstract onPrepare(JJ)V
.end method

.method public abstract onProgress(JJJ)V
.end method

.method public abstract onQuery(Lcom/oplus/aiunit/download/core/DownloadInfo;)V
.end method

.method public abstract onStart(JJ)V
.end method

.method public abstract onSuccess(JJZ)V
.end method
