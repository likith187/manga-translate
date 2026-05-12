.class public interface abstract Lcom/oplus/aiunit/core/service/IServiceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/service/IServiceManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

.field public static final TAG:Ljava/lang/String; = "ServiceManager"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->$$INSTANCE:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    sput-object v0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    return-void
.end method

.method public static getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;
    .locals 1

    sget-object v0, Lcom/oplus/aiunit/core/service/IServiceManager;->Companion:Lcom/oplus/aiunit/core/service/IServiceManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/aiunit/core/service/IServiceManager$Companion;->getInstance()Lcom/oplus/aiunit/core/service/IServiceManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract access(Lcom/oplus/aiunit/core/base/AIDetector;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Lcom/oplus/aiunit/core/base/FrameInputSlot;",
            "O:",
            "Lcom/oplus/aiunit/core/base/FrameOutputSlot;",
            ">(",
            "Lcom/oplus/aiunit/core/base/AIDetector<",
            "TI;TO;>;)I"
        }
    .end annotation
.end method

.method public abstract acquire(Lcom/oplus/aiunit/core/ParamPackage;)I
.end method

.method public abstract addConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
.end method

.method public abstract attach(Lcom/oplus/aiunit/core/ConfigPackage;)I
.end method

.method public abstract authorize(Lcom/oplus/aiunit/core/ParamPackage;)I
.end method

.method public abstract destroy()V
.end method

.method public abstract detach(Ljava/lang/String;)I
.end method

.method public abstract detach(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract driveAndAttach(Lcom/oplus/aiunit/core/ConfigPackage;Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)I
.end method

.method public abstract getRunningUnitInfo(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract infer(Lcom/oplus/aiunit/core/FramePackage;)V
.end method

.method public abstract init(Landroid/content/Context;Lcom/oplus/aiunit/core/callback/ConnectionCallback;Lcom/oplus/aiunit/core/data/ServiceType;)V
.end method

.method public abstract isActive(Lcom/oplus/aiunit/core/ParamPackage;)Z
.end method

.method public abstract isConnected()Z
.end method

.method public abstract isStarted(Ljava/lang/String;)Z
.end method

.method public abstract prepare(Lcom/oplus/aiunit/core/ParamPackage;)V
.end method

.method public abstract process(Lcom/oplus/aiunit/core/FramePackage;)I
.end method

.method public abstract process(Lcom/oplus/aiunit/core/FramePackage;Ljava/lang/String;)I
.end method

.method public abstract release(Lcom/oplus/aiunit/core/ParamPackage;)V
.end method

.method public abstract removeConnectionCallback(Lcom/oplus/aiunit/core/callback/ConnectionCallback;)V
.end method

.method public abstract removeStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)Z
.end method

.method public abstract removeUnit(Ljava/lang/String;)Z
.end method
