.class public interface abstract Lcom/oplus/aiunit/core/callback/DetectStateCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/callback/DetectStateCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onAllDestroy(Ljava/lang/String;)V
.end method

.method public abstract onAllFail(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onFail(ILjava/lang/String;)V
.end method

.method public abstract onOneDestroy(Lcom/oplus/aiunit/core/data/AIConfig;)V
.end method

.method public abstract onOneFail(Lcom/oplus/aiunit/core/data/AIConfig;ILjava/lang/String;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStart(Lcom/oplus/aiunit/core/data/AIConfig;)V
.end method
