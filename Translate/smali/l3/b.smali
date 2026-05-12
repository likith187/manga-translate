.class public final Ll3/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 7

    invoke-static {p1}, Ln3/a;->F(Landroid/os/Parcel;)I

    move-result p0

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    if-ge v4, p0, :cond_3

    invoke-static {p1}, Ln3/a;->y(Landroid/os/Parcel;)I

    move-result v4

    invoke-static {v4}, Ln3/a;->u(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    invoke-static {p1, v4}, Ln3/a;->E(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v4}, Ln3/a;->B(Landroid/os/Parcel;I)J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-static {p1, v4}, Ln3/a;->A(Landroid/os/Parcel;I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {p1, v4}, Ln3/a;->o(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-static {p1, p0}, Ln3/a;->t(Landroid/os/Parcel;I)V

    new-instance p0, Lcom/google/android/gms/common/Feature;

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/common/Feature;

    return-object p0
.end method
