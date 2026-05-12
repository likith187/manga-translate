.class public Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/a;

    invoke-direct {v0}, Lo3/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->a:Z

    iput p2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->b:I

    return-void
.end method


# virtual methods
.method public D0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->a:Z

    return p0
.end method

.method public E0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->b:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->D0()Z

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleAvailabilityResponse;->E0()I

    move-result p0

    invoke-static {p1, v0, p0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
