.class public Lcom/google/android/gms/common/Feature;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/Feature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ll3/b;

    invoke-direct {v0}, Ll3/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/common/Feature;->b:I

    iput-wide p3, p0, Lcom/google/android/gms/common/Feature;->c:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/common/Feature;->c:J

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/common/Feature;->b:I

    return-void
.end method


# virtual methods
.method public D0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/Feature;->a:Ljava/lang/String;

    return-object p0
.end method

.method public E0()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/common/Feature;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget p0, p0, Lcom/google/android/gms/common/Feature;->b:I

    int-to-long v0, p0

    :cond_0
    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/common/Feature;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/gms/common/Feature;

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->E0()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/Feature;->E0()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->E0()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->c(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->E0()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string v1, "version"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->D0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/android/gms/common/Feature;->b:I

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/Feature;->E0()J

    move-result-wide v1

    invoke-static {p1, v0, v1, v2}, Ln3/b;->i(Landroid/os/Parcel;IJ)V

    invoke-static {p1, p2}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
