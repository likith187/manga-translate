.class public Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/Long;

.field private final f:Ljava/lang/Long;

.field private final h:I

.field private final i:Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo3/d;

    invoke-direct {v0}, Lo3/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Long;Ljava/lang/Long;I)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->a:I

    iput p2, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->b:I

    iput-object p3, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->c:Ljava/lang/Long;

    iput-object p4, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->f:Ljava/lang/Long;

    iput p5, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->h:I

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    new-instance p1, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate$a;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    invoke-direct {p1, p2, p3, p4, p5}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate$a;-><init>(JJ)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->i:Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate$a;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public D0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->h:I

    return p0
.end method

.method public E0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->b:I

    return p0
.end method

.method public F0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->a:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->F0()I

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->E0()I

    move-result v1

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->c:Ljava/lang/Long;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ln3/b;->j(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->f:Ljava/lang/Long;

    invoke-static {p1, v0, v1, v2}, Ln3/b;->j(Landroid/os/Parcel;ILjava/lang/Long;Z)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/common/moduleinstall/ModuleInstallStatusUpdate;->D0()I

    move-result p0

    invoke-static {p1, v0, p0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
