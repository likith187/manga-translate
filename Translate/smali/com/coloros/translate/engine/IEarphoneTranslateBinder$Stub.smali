.class public abstract Lcom/coloros/translate/engine/IEarphoneTranslateBinder$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/engine/IEarphoneTranslateBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/IEarphoneTranslateBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/engine/IEarphoneTranslateBinder$Stub$a;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeMicState:I = 0x2

.field static final TRANSACTION_getApiVersion:I = 0x1

.field static final TRANSACTION_registerCallBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.coloros.translate.engine.IEarphoneTranslateBinder"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/IEarphoneTranslateBinder;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.coloros.translate.engine.IEarphoneTranslateBinder"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/coloros/translate/engine/IEarphoneTranslateBinder;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/coloros/translate/engine/IEarphoneTranslateBinder;

    return-object v0

    :cond_1
    new-instance v0, Lcom/coloros/translate/engine/IEarphoneTranslateBinder$Stub$a;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder$Stub$a;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.coloros.translate.engine.IEarphoneTranslateBinder"

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
    if-eq p1, v1, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/translate/engine/IEarBinderCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/IEarBinderCallback;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder;->registerCallBack(Lcom/coloros/translate/engine/IEarBinderCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder;->changeMicState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0, v1}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder$a;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder;->getApiVersion()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v1
.end method
