.class public abstract Lcom/coloros/translate/engine/IRtasrEngine$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/engine/IRtasrEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/IRtasrEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/IRtasrEngine$Stub$a;
    }
.end annotation


# static fields
.field static final TRANSACTION_destroy:I = 0x9

.field static final TRANSACTION_invokeMethod:I = 0xa

.field static final TRANSACTION_pauseRecord:I = 0x5

.field static final TRANSACTION_registerRtasrListener:I = 0x2

.field static final TRANSACTION_resumeRecord:I = 0x6

.field static final TRANSACTION_saveAudioFile:I = 0xd

.field static final TRANSACTION_sendAudioBytes:I = 0x7

.field static final TRANSACTION_setConfig:I = 0x1

.field static final TRANSACTION_startAsr:I = 0xb

.field static final TRANSACTION_startRecord:I = 0x4

.field static final TRANSACTION_stop:I = 0x8

.field static final TRANSACTION_stopAsr:I = 0xc

.field static final TRANSACTION_stopAudioFile:I = 0xe

.field static final TRANSACTION_stopRecord:I = 0xf

.field static final TRANSACTION_unRegisterRtasrListener:I = 0x3

.field static final TRANSACTION_useBluetoothMic:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.translate.engine.IRtasrEngine"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/IRtasrEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.translate.engine.IRtasrEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/coloros/translate/engine/IRtasrEngine;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/coloros/translate/engine/IRtasrEngine;

    return-object v0

    :cond_1
    new-instance v0, Lcom/coloros/translate/engine/IRtasrEngine$Stub$a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/IRtasrEngine$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.coloros.translate.engine.IRtasrEngine"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IRtasrEngine;->useBluetoothMic(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->stopRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->stopAudioFile()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/coloros/translate/engine/IRtasrEngine$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IRtasrEngine;->saveAudioFile(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->stopAsr()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_5
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/coloros/translate/engine/IRtasrEngine$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IRtasrEngine;->startAsr(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/coloros/translate/engine/IRtasrEngine$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p4, p2}, Lcom/coloros/translate/engine/IRtasrEngine;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lcom/coloros/translate/engine/IRtasrEngine$a;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_1

    :pswitch_7
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->destroy()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_8
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->stop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IRtasrEngine;->sendAudioBytes([B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_a
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->resumeRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_b
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->pauseRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_c
    invoke-interface {p0}, Lcom/coloros/translate/engine/IRtasrEngine;->startRecord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IRtasrEngine;->unRegisterRtasrListener(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/coloros/translate/engine/IRtasrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/IRtasrListener;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/engine/IRtasrEngine;->registerRtasrListener(Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_1

    :pswitch_f
    sget-object p1, Lcom/coloros/translate/engine/info/AsrParams;->CREATOR:Lcom/coloros/translate/engine/info/AsrParams$a;

    invoke-static {p2, p1}, Lcom/coloros/translate/engine/IRtasrEngine$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/engine/info/AsrParams;

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IRtasrEngine;->setConfig(Lcom/coloros/translate/engine/info/AsrParams;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
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
