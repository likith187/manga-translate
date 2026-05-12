.class public interface abstract Lcom/oplus/aiunit/core/callback/AICallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/callback/ConnectionCallback;
.implements Lcom/oplus/aiunit/core/callback/DetectStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/callback/AICallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract onServiceConnect()V
.end method

.method public abstract onServiceConnectFailed(I)V
.end method
