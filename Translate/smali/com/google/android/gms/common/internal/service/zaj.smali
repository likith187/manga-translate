.class public abstract Lcom/google/android/gms/common/internal/service/zaj;
.super Lt3/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/service/zak;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.service.ICommonCallbacks"

    invoke-direct {p0, v0}, Lt3/b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zaa(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lt3/c;->b(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/internal/service/zak;->zab(I)V

    return p3

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
