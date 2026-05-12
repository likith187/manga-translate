.class public final Lcom/google/android/gms/common/images/WebImage;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/images/WebImage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final b:Landroid/net/Uri;

.field private final c:I

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/images/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/images/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/WebImage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/net/Uri;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/images/WebImage;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    iput p3, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    iput p4, p0, Lcom/google/android/gms/common/images/WebImage;->f:I

    return-void
.end method


# virtual methods
.method public D0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/images/WebImage;->f:I

    return p0
.end method

.method public E0()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    return-object p0
.end method

.method public F0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/common/images/WebImage;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/WebImage;

    iget-object v2, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    iget v3, p1, Lcom/google/android/gms/common/images/WebImage;->c:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Lcom/google/android/gms/common/images/WebImage;->f:I

    iget p1, p1, Lcom/google/android/gms/common/images/WebImage;->f:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/google/android/gms/common/images/WebImage;->f:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget v1, p0, Lcom/google/android/gms/common/images/WebImage;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/common/images/WebImage;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/common/images/WebImage;->b:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Image %dx%d %s"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/images/WebImage;->a:I

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/WebImage;->E0()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v0, p2, v2}, Ln3/b;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/WebImage;->F0()I

    move-result v0

    invoke-static {p1, p2, v0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/images/WebImage;->D0()I

    move-result p0

    invoke-static {p1, p2, p0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
