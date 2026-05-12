.class public final Lcom/google/android/gms/common/stats/WakeLockEvent;
.super Lcom/google/android/gms/common/stats/StatsEvent;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/WakeLockEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field private final b:J

.field private final c:I

.field private final f:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Ljava/util/List;

.field private final l:Ljava/lang/String;

.field private final m:J

.field private final n:I

.field private final o:Ljava/lang/String;

.field private final p:F

.field private final q:J

.field private final r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJLjava/lang/String;Z)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/StatsEvent;-><init>()V

    move v1, p1

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->a:I

    move-wide v1, p2

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->b:J

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->c:I

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->f:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->h:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->i:Ljava/lang/String;

    move v1, p6

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->j:I

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->k:Ljava/util/List;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->l:Ljava/lang/String;

    move-wide v1, p9

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->m:J

    move v1, p11

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->n:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->o:Ljava/lang/String;

    move/from16 v1, p14

    iput v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->p:F

    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->q:J

    move/from16 v1, p18

    iput-boolean v1, v0, Lcom/google/android/gms/common/stats/WakeLockEvent;->r:Z

    return-void
.end method


# virtual methods
.method public final D0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->c:I

    return p0
.end method

.method public final E0()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->b:J

    return-wide v0
.end method

.method public final F0()Ljava/lang/String;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->k:Ljava/util/List;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, ","

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->n:I

    iget-object v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->o:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->p:F

    iget-object v6, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->i:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->j:I

    iget-object v8, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->f:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->r:Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_2

    move-object v4, v1

    :cond_2
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v6

    :goto_1
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result p2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->a:I

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->b:J

    invoke-static {p1, v0, v1, v2}, Ln3/b;->i(Landroid/os/Parcel;IJ)V

    iget-object v0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->f:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x5

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->j:I

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->k:Ljava/util/List;

    invoke-static {p1, v0, v1, v2}, Ln3/b;->o(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v0, 0x8

    iget-wide v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->m:J

    invoke-static {p1, v0, v3, v4}, Ln3/b;->i(Landroid/os/Parcel;IJ)V

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->h:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->c:I

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->l:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->o:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0xe

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->n:I

    invoke-static {p1, v0, v1}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/16 v0, 0xf

    iget v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->p:F

    invoke-static {p1, v0, v1}, Ln3/b;->e(Landroid/os/Parcel;IF)V

    const/16 v0, 0x10

    iget-wide v3, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->q:J

    invoke-static {p1, v0, v3, v4}, Ln3/b;->i(Landroid/os/Parcel;IJ)V

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->i:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x12

    iget-boolean p0, p0, Lcom/google/android/gms/common/stats/WakeLockEvent;->r:Z

    invoke-static {p1, v0, p0}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
