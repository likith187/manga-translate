.class public final Lcom/google/android/gms/signin/internal/zaa;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/signin/internal/zaa;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private b:I

.field private c:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/b;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/zaa;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/zaa;->a:I

    iput p2, p0, Lcom/google/android/gms/signin/internal/zaa;->b:I

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/zaa;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/signin/internal/zaa;->a:I

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/signin/internal/zaa;->b:I

    invoke-static {p1, v0, v2}, Ln3/b;->g(Landroid/os/Parcel;II)V

    iget-object p0, p0, Lcom/google/android/gms/signin/internal/zaa;->c:Landroid/content/Intent;

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v2, p0, p2, v0}, Ln3/b;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
