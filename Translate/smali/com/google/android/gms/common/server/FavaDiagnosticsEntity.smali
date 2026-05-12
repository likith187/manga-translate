.class public Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lp3/a;

    invoke-direct {v0}, Lp3/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->c:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget p2, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->a:I

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v1, p2}, Ln3/b;->g(Landroid/os/Parcel;II)V

    iget-object p2, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->b:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, p2, v1}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x3

    iget p0, p0, Lcom/google/android/gms/common/server/FavaDiagnosticsEntity;->c:I

    invoke-static {p1, p2, p0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
