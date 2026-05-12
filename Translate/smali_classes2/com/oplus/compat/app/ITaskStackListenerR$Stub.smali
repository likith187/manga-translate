.class public abstract Lcom/oplus/compat/app/ITaskStackListenerR$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/compat/app/ITaskStackListenerR;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/ITaskStackListenerR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/compat/app/ITaskStackListenerR$Stub$a;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.ITaskStackListener"

.field static final TRANSACTION_onActivityDismissingDockedStack:I = 0x6

.field static final TRANSACTION_onActivityForcedResizable:I = 0x5

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed:I = 0x7

.field static final TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted:I = 0x8

.field static final TRANSACTION_onActivityPinned:I = 0x2

.field static final TRANSACTION_onActivityRequestedOrientationChanged:I = 0xd

.field static final TRANSACTION_onActivityRestartAttempt:I = 0x4

.field static final TRANSACTION_onActivityRotation:I = 0x1a

.field static final TRANSACTION_onActivityUnpinned:I = 0x3

.field static final TRANSACTION_onBackPressedOnTaskRoot:I = 0x12

.field static final TRANSACTION_onRecentTaskListFrozenChanged:I = 0x17

.field static final TRANSACTION_onRecentTaskListUpdated:I = 0x16

.field static final TRANSACTION_onSingleTaskDisplayDrawn:I = 0x13

.field static final TRANSACTION_onSingleTaskDisplayEmpty:I = 0x14

.field static final TRANSACTION_onSizeCompatModeActivityChanged:I = 0x11

.field static final TRANSACTION_onTaskCreated:I = 0x9

.field static final TRANSACTION_onTaskDescriptionChanged:I = 0xc

.field static final TRANSACTION_onTaskDisplayChanged:I = 0x15

.field static final TRANSACTION_onTaskFocusChanged:I = 0x18

.field static final TRANSACTION_onTaskMovedToFront:I = 0xb

.field static final TRANSACTION_onTaskProfileLocked:I = 0xf

.field static final TRANSACTION_onTaskRemovalStarted:I = 0xe

.field static final TRANSACTION_onTaskRemoved:I = 0xa

.field static final TRANSACTION_onTaskRequestedOrientationChanged:I = 0x19

.field static final TRANSACTION_onTaskSnapshotChanged:I = 0x10

.field static final TRANSACTION_onTaskStackChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.app.ITaskStackListener"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oplus/compat/app/ITaskStackListenerR;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.app.ITaskStackListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oplus/compat/app/ITaskStackListenerR;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oplus/compat/app/ITaskStackListenerR;

    return-object v0

    :cond_1
    new-instance v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$a;

    invoke-direct {v0, p0}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/oplus/compat/app/ITaskStackListenerR;
    .locals 1

    sget-object v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$a;->b:Lcom/oplus/compat/app/ITaskStackListenerR;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "onActivityRotation"

    return-object p0

    :pswitch_1
    const-string p0, "onTaskRequestedOrientationChanged"

    return-object p0

    :pswitch_2
    const-string p0, "onTaskFocusChanged"

    return-object p0

    :pswitch_3
    const-string p0, "onRecentTaskListFrozenChanged"

    return-object p0

    :pswitch_4
    const-string p0, "onRecentTaskListUpdated"

    return-object p0

    :pswitch_5
    const-string p0, "onTaskDisplayChanged"

    return-object p0

    :pswitch_6
    const-string p0, "onSingleTaskDisplayEmpty"

    return-object p0

    :pswitch_7
    const-string p0, "onSingleTaskDisplayDrawn"

    return-object p0

    :pswitch_8
    const-string p0, "onBackPressedOnTaskRoot"

    return-object p0

    :pswitch_9
    const-string p0, "onSizeCompatModeActivityChanged"

    return-object p0

    :pswitch_a
    const-string p0, "onTaskSnapshotChanged"

    return-object p0

    :pswitch_b
    const-string p0, "onTaskProfileLocked"

    return-object p0

    :pswitch_c
    const-string p0, "onTaskRemovalStarted"

    return-object p0

    :pswitch_d
    const-string p0, "onActivityRequestedOrientationChanged"

    return-object p0

    :pswitch_e
    const-string p0, "onTaskDescriptionChanged"

    return-object p0

    :pswitch_f
    const-string p0, "onTaskMovedToFront"

    return-object p0

    :pswitch_10
    const-string p0, "onTaskRemoved"

    return-object p0

    :pswitch_11
    const-string p0, "onTaskCreated"

    return-object p0

    :pswitch_12
    const-string p0, "onActivityLaunchOnSecondaryDisplayRerouted"

    return-object p0

    :pswitch_13
    const-string p0, "onActivityLaunchOnSecondaryDisplayFailed"

    return-object p0

    :pswitch_14
    const-string p0, "onActivityDismissingDockedStack"

    return-object p0

    :pswitch_15
    const-string p0, "onActivityForcedResizable"

    return-object p0

    :pswitch_16
    const-string p0, "onActivityRestartAttempt"

    return-object p0

    :pswitch_17
    const-string p0, "onActivityUnpinned"

    return-object p0

    :pswitch_18
    const-string p0, "onActivityPinned"

    return-object p0

    :pswitch_19
    const-string p0, "onTaskStackChanged"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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

.method public static setDefaultImpl(Lcom/oplus/compat/app/ITaskStackListenerR;)Z
    .locals 1

    sget-object v0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$a;->b:Lcom/oplus/compat/app/ITaskStackListenerR;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oplus/compat/app/ITaskStackListenerR$Stub$a;->b:Lcom/oplus/compat/app/ITaskStackListenerR;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/oplus/compat/app/ITaskStackListenerR$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.app.ITaskStackListener"

    if-eq p1, v0, :cond_e

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRotation(I)V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRequestedOrientationChanged(II)V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-interface {p0, p1, v0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskFocusChanged(IZ)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p0, v0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onRecentTaskListFrozenChanged(Z)V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onRecentTaskListUpdated()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskDisplayChanged(II)V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSingleTaskDisplayEmpty(I)V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSingleTaskDisplayDrawn(I)V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_2
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onBackPressedOnTaskRoot(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onSizeCompatModeActivityChanged(ILandroid/os/IBinder;)V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/oplus/compat/app/TaskSnapshotNative;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/oplus/compat/app/TaskSnapshotNative;

    :cond_3
    invoke-interface {p0, p1, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskSnapshotChanged(ILcom/oplus/compat/app/TaskSnapshotNative;)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskProfileLocked(II)V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_4
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRequestedOrientationChanged(II)V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_5
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_6
    invoke-interface {p0, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskRemoved(I)V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    sget-object p3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Landroid/content/ComponentName;

    :cond_7
    invoke-interface {p0, p1, v3}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskCreated(ILandroid/content/ComponentName;)V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v3, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityLaunchOnSecondaryDisplayRerouted(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v3, p1}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityLaunchOnSecondaryDisplayFailed(Landroid/app/ActivityManager$RunningTaskInfo;I)V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityDismissingDockedStack()V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityForcedResizable(Ljava/lang/String;II)V

    return v1

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b

    move p1, v1

    goto :goto_0

    :cond_b
    move p1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_c

    move p3, v1

    goto :goto_1

    :cond_c
    move p3, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d

    move v0, v1

    :cond_d
    invoke-interface {p0, v3, p1, p3, v0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityRestartAttempt(Landroid/app/ActivityManager$RunningTaskInfo;ZZZ)V

    return v1

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityUnpinned()V

    return v1

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, p3, p4, p2}, Lcom/oplus/compat/app/ITaskStackListenerR;->onActivityPinned(Ljava/lang/String;III)V

    return v1

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/oplus/compat/app/ITaskStackListenerR;->onTaskStackChanged()V

    return v1

    :cond_e
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
