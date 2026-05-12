.class final Lcom/appaac/haptic/sync/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/appaac/haptic/sync/b;
    .locals 0

    new-instance p0, Lcom/appaac/haptic/sync/b;

    invoke-direct {p0, p1}, Lcom/appaac/haptic/sync/b;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public b(I)[Lcom/appaac/haptic/sync/b;
    .locals 0

    new-array p0, p1, [Lcom/appaac/haptic/sync/b;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appaac/haptic/sync/a;->a(Landroid/os/Parcel;)Lcom/appaac/haptic/sync/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/appaac/haptic/sync/a;->b(I)[Lcom/appaac/haptic/sync/b;

    move-result-object p0

    return-object p0
.end method
