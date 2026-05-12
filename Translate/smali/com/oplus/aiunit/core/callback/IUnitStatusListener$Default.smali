.class public Lcom/oplus/aiunit/core/callback/IUnitStatusListener$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/callback/IUnitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/callback/IUnitStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFail(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onFailSpec(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStart(Lcom/oplus/aiunit/core/IUnit;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStop(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
