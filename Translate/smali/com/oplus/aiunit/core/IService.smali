.class public interface abstract Lcom/oplus/aiunit/core/IService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/IService$_Parcel;,
        Lcom/oplus/aiunit/core/IService$Stub;,
        Lcom/oplus/aiunit/core/IService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.aiunit.core.IService"


# virtual methods
.method public abstract access(Lcom/oplus/aiunit/core/ParamPackage;)I
.end method

.method public abstract acquire(Lcom/oplus/aiunit/core/ParamPackage;)I
.end method

.method public abstract attach(Lcom/oplus/aiunit/core/ConfigPackage;)I
.end method

.method public abstract authorize(Lcom/oplus/aiunit/core/ParamPackage;)I
.end method

.method public abstract detach(Ljava/lang/String;)I
.end method

.method public abstract drive(Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;
.end method

.method public abstract infer(Lcom/oplus/aiunit/core/FramePackage;)V
.end method

.method public abstract init(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isActive(Lcom/oplus/aiunit/core/ParamPackage;)Z
.end method

.method public abstract onSystemNotify(IILjava/lang/String;[B)V
.end method

.method public abstract prepare(Lcom/oplus/aiunit/core/ParamPackage;)V
.end method

.method public abstract process(Lcom/oplus/aiunit/core/FramePackage;)I
.end method

.method public abstract release(Lcom/oplus/aiunit/core/ParamPackage;)V
.end method
