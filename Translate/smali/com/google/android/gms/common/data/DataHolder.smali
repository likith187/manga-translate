.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final n:Lcom/google/android/gms/common/data/DataHolder$a;


# instance fields
.field final a:I

.field private final b:[Ljava/lang/String;

.field c:Landroid/os/Bundle;

.field private final f:[Landroid/database/CursorWindow;

.field private final h:I

.field private final i:Landroid/os/Bundle;

.field j:[I

.field k:I

.field l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/data/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/b;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->n:Lcom/google/android/gms/common/data/DataHolder$a;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->l:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->m:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->a:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public D0()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/DataHolder;->i:Landroid/os/Bundle;

    return-object p0
.end method

.method public E0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    return p0
.end method

.method public final F0()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    aget-object v2, v2, v1

    invoke-virtual {v3, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->j:[I

    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->j:[I

    aput v1, v3, v0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->k:I

    return-void
.end method

.method public close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->l:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final finalize()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v0, "DataBuffer"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->l:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->b:[Ljava/lang/String;

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Ln3/b;->n(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/android/gms/common/data/DataHolder;->f:[Landroid/database/CursorWindow;

    invoke-static {p1, v0, v4, p2, v3}, Ln3/b;->p(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->E0()I

    move-result v4

    invoke-static {p1, v0, v4}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->D0()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v0, v4, v3}, Ln3/b;->d(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v0, 0x3e8

    iget v3, p0, Lcom/google/android/gms/common/data/DataHolder;->a:I

    invoke-static {p1, v0, v3}, Ln3/b;->g(Landroid/os/Parcel;II)V

    invoke-static {p1, v1}, Ln3/b;->b(Landroid/os/Parcel;I)V

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method
