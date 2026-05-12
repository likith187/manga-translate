.class public Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

.field private final b:Z

.field private final c:Z

.field private final f:[I

.field private final h:I

.field private final i:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/x0;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/x0;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;ZZ[II[I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    iput-boolean p2, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->b:Z

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->f:[I

    iput p5, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->h:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->i:[I

    return-void
.end method


# virtual methods
.method public D0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->h:I

    return p0
.end method

.method public E0()[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->f:[I

    return-object p0
.end method

.method public F0()[I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->i:[I

    return-object p0
.end method

.method public G0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->b:Z

    return p0
.end method

.method public H0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->c:Z

    return p0
.end method

.method public final I0()Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->a:Lcom/google/android/gms/common/internal/RootTelemetryConfiguration;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Ln3/b;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->G0()Z

    move-result v1

    invoke-static {p1, p2, v1}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->H0()Z

    move-result v1

    invoke-static {p1, p2, v1}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 p2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->E0()[I

    move-result-object v1

    invoke-static {p1, p2, v1, v3}, Ln3/b;->h(Landroid/os/Parcel;I[IZ)V

    const/4 p2, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->D0()I

    move-result v1

    invoke-static {p1, p2, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 p2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ConnectionTelemetryConfiguration;->F0()[I

    move-result-object p0

    invoke-static {p1, p2, p0, v3}, Ln3/b;->h(Landroid/os/Parcel;I[IZ)V

    invoke-static {p1, v0}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
