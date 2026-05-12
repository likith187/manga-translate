.class public abstract Lcom/oplus/aiunit/core/IService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/aiunit/core/IService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/core/IService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/aiunit/core/IService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_access:I = 0x3

.field static final TRANSACTION_acquire:I = 0xa

.field static final TRANSACTION_attach:I = 0xb

.field static final TRANSACTION_authorize:I = 0x2

.field static final TRANSACTION_detach:I = 0xc

.field static final TRANSACTION_drive:I = 0x5

.field static final TRANSACTION_infer:I = 0x8

.field static final TRANSACTION_init:I = 0x4

.field static final TRANSACTION_isActive:I = 0x6

.field static final TRANSACTION_onSystemNotify:I = 0x1

.field static final TRANSACTION_prepare:I = 0x7

.field static final TRANSACTION_process:I = 0xd

.field static final TRANSACTION_release:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oplus.aiunit.core.IService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/aiunit/core/IService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.aiunit.core.IService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/aiunit/core/IService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oplus/aiunit/core/IService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oplus/aiunit/core/IService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/oplus/aiunit/core/IService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.oplus.aiunit.core.IService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Lcom/oplus/aiunit/core/FramePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/FramePackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->process(Lcom/oplus/aiunit/core/FramePackage;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, p1, v1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->detach(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Lcom/oplus/aiunit/core/ConfigPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ConfigPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->attach(Lcom/oplus/aiunit/core/ConfigPackage;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->acquire(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, p1, v1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto/16 :goto_0

    :pswitch_4
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->release(Lcom/oplus/aiunit/core/ParamPackage;)V

    goto/16 :goto_0

    :pswitch_5
    sget-object p1, Lcom/oplus/aiunit/core/FramePackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/FramePackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->infer(Lcom/oplus/aiunit/core/FramePackage;)V

    goto/16 :goto_0

    :pswitch_6
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->prepare(Lcom/oplus/aiunit/core/ParamPackage;)V

    goto/16 :goto_0

    :pswitch_7
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->isActive(Lcom/oplus/aiunit/core/ParamPackage;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, p1, v1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_8
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->drive(Lcom/oplus/aiunit/core/ParamPackage;)Lcom/oplus/aiunit/core/IUnit;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    invoke-static {p3, p1, v1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->init(Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_a
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->access(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, p1, v1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_b
    sget-object p1, Lcom/oplus/aiunit/core/ParamPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$000(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/ParamPackage;

    invoke-interface {p0, p1}, Lcom/oplus/aiunit/core/IService;->authorize(Lcom/oplus/aiunit/core/ParamPackage;)I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p3, p1, v1}, Lcom/oplus/aiunit/core/IService$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-interface {p0, p1, p4, v0, p2}, Lcom/oplus/aiunit/core/IService;->onSystemNotify(IILjava/lang/String;[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
