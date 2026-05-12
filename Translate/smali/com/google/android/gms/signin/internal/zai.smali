.class public final Lcom/google/android/gms/signin/internal/zai;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/signin/internal/zai;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:Lcom/google/android/gms/common/internal/zat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/f;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/zai;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/internal/zat;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/zai;->a:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/zai;->b:Lcom/google/android/gms/common/internal/zat;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/signin/internal/zai;->a:I

    invoke-static {p1, v1, v2}, Ln3/b;->g(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zai;->b:Lcom/google/android/gms/common/internal/zat;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, p0, p2, v1}, Ln3/b;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v0}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
