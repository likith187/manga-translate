.class public Lkotlinx/serialization/json/internal/ByteArrayPoolBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final arrays:Lkotlin/collections/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/collections/h;"
        }
    .end annotation
.end field

.field private bytesTotal:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/collections/h;

    invoke-direct {v0}, Lkotlin/collections/h;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->arrays:Lkotlin/collections/h;

    return-void
.end method


# virtual methods
.method protected final releaseImpl([B)V
    .locals 2

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->bytesTotal:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-static {}, Lkotlinx/serialization/json/internal/ArrayPoolsKt;->access$getMAX_CHARS_IN_POOL$p()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->bytesTotal:I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->bytesTotal:I

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->arrays:Lkotlin/collections/h;

    invoke-virtual {v0, p1}, Lkotlin/collections/h;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected final take(I)[B
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->arrays:Lkotlin/collections/h;

    invoke-virtual {v0}, Lkotlin/collections/h;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    iget v1, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->bytesTotal:I

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lkotlinx/serialization/json/internal/ByteArrayPoolBase;->bytesTotal:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    if-nez v0, :cond_1

    new-array v0, p1, [B

    :cond_1
    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method
