.class public interface abstract Lcom/oplus/aiunit/core/IUnit;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/IUnit$_Parcel;,
        Lcom/oplus/aiunit/core/IUnit$Stub;,
        Lcom/oplus/aiunit/core/IUnit$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.oplus.aiunit.core.IUnit"


# virtual methods
.method public abstract attach(Lcom/oplus/aiunit/core/ConfigPackage;)I
.end method

.method public abstract detach(Ljava/lang/String;)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRunningInfo(Landroid/os/Bundle;)V
.end method

.method public abstract isActive()Z
.end method

.method public abstract process(Lcom/oplus/aiunit/core/FramePackage;)I
.end method
