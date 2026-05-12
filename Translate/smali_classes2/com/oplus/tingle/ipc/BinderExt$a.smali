.class final Lcom/oplus/tingle/ipc/BinderExt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/tingle/ipc/BinderExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/tingle/ipc/BinderExt;
    .locals 0

    new-instance p0, Lcom/oplus/tingle/ipc/BinderExt;

    invoke-direct {p0, p1}, Lcom/oplus/tingle/ipc/BinderExt;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/oplus/tingle/ipc/BinderExt;
    .locals 0

    new-array p0, p1, [Lcom/oplus/tingle/ipc/BinderExt;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/tingle/ipc/BinderExt$a;->a(Landroid/os/Parcel;)Lcom/oplus/tingle/ipc/BinderExt;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/tingle/ipc/BinderExt$a;->b(I)[Lcom/oplus/tingle/ipc/BinderExt;

    move-result-object p0

    return-object p0
.end method
