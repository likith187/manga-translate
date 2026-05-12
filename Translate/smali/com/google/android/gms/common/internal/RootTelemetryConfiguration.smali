.class public Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final f:I

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/m0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/m0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    iput p4, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->f:I

    iput p5, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->h:I

    return-void
.end method


# virtual methods
.method public D0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->f:I

    return p0
.end method

.method public E0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->h:I

    return p0
.end method

.method public F0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->b:Z

    return p0
.end method

.method public G0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->c:Z

    return p0
.end method

.method public l0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->a:I

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->l0()I

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->F0()Z

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->G0()Z

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->D0()I

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;->E0()I

    move-result p0

    invoke-static {p1, v0, p0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
