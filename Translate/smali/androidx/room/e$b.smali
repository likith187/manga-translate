.class Landroidx/room/e$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:[J

.field final b:[Z

.field final c:[I

.field d:Z

.field e:Z


# direct methods
.method constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/e$b;->a:[J

    new-array v1, p1, [Z

    iput-object v1, p0, Landroidx/room/e$b;->b:[Z

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/room/e$b;->c:[I

    const-wide/16 p0, 0x0

    invoke-static {v0, p0, p1}, Ljava/util/Arrays;->fill([JJ)V

    const/4 p0, 0x0

    invoke-static {v1, p0}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method


# virtual methods
.method a()[I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroidx/room/e$b;->d:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/room/e$b;->e:Z

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/room/e$b;->a:[J

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_4

    iget-object v4, p0, Landroidx/room/e$b;->a:[J

    aget-wide v4, v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iget-object v5, p0, Landroidx/room/e$b;->b:[Z

    aget-boolean v6, v5, v2

    if-eq v4, v6, :cond_3

    iget-object v6, p0, Landroidx/room/e$b;->c:[I

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    :goto_2
    aput v3, v6, v2

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    iget-object v3, p0, Landroidx/room/e$b;->c:[I

    aput v1, v3, v2

    :goto_3
    aput-boolean v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iput-boolean v3, p0, Landroidx/room/e$b;->e:Z

    iput-boolean v1, p0, Landroidx/room/e$b;->d:Z

    iget-object v0, p0, Landroidx/room/e$b;->c:[I

    monitor-exit p0

    return-object v0

    :cond_5
    :goto_4
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method varargs b([I)Z
    .locals 9

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    iget-object v4, p0, Landroidx/room/e$b;->a:[J

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    aput-wide v7, v4, v3

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/room/e$b;->d:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method varargs c([I)Z
    .locals 11

    monitor-enter p0

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    iget-object v4, p0, Landroidx/room/e$b;->a:[J

    aget-wide v5, v4, v3

    const-wide/16 v7, 0x1

    sub-long v9, v5, v7

    aput-wide v9, v4, v3

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/room/e$b;->d:Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroidx/room/e$b;->e:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
