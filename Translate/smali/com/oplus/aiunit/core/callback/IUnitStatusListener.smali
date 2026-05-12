.class public interface abstract Lcom/oplus/aiunit/core/callback/IUnitStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/callback/IUnitStatusListener$Stub;,
        Lcom/oplus/aiunit/core/callback/IUnitStatusListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.aiunit.core.callback.IUnitStatusListener"


# virtual methods
.method public abstract onDestroy(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onFail(Ljava/lang/String;I)V
.end method

.method public abstract onFailSpec(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract onStart(Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)V
.end method

.method public abstract onStop(Ljava/lang/String;)V
.end method
