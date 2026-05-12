.class Lcom/oplus/compat/app/TaskSnapshotNative$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/TaskSnapshotNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/oplus/compat/app/TaskSnapshotNative;
    .locals 1

    new-instance p0, Lcom/oplus/compat/app/TaskSnapshotNative;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oplus/compat/app/TaskSnapshotNative;-><init>(Landroid/os/Parcel;Lcom/oplus/compat/app/TaskSnapshotNative$a;)V

    return-object p0
.end method

.method public b(I)[Lcom/oplus/compat/app/TaskSnapshotNative;
    .locals 0

    new-array p0, p1, [Lcom/oplus/compat/app/TaskSnapshotNative;

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative$a;->a(Landroid/os/Parcel;)Lcom/oplus/compat/app/TaskSnapshotNative;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oplus/compat/app/TaskSnapshotNative$a;->b(I)[Lcom/oplus/compat/app/TaskSnapshotNative;

    move-result-object p0

    return-object p0
.end method
