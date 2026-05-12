.class public final Lkotlinx/serialization/internal/ULongArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder<",
        "Ln8/c0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# instance fields
.field private buffer:[J

.field private position:I


# direct methods
.method private constructor <init>([J)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    .line 4
    invoke-static {p1}, Ln8/c0;->k([J)I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/ULongArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method

.method public synthetic constructor <init>([JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/ULongArrayBuilder;-><init>([J)V

    return-void
.end method


# virtual methods
.method public final append-VKZWuLQ$kotlinx_serialization_core(J)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    invoke-virtual {p0}, Lkotlinx/serialization/internal/ULongArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->position:I

    invoke-static {v0, v1, p1, p2}, Ln8/c0;->o([JIJ)V

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/ULongArrayBuilder;->build-Y2RjT0g$kotlinx_serialization_core()[J

    move-result-object p0

    invoke-static {p0}, Ln8/c0;->a([J)Ln8/c0;

    move-result-object p0

    return-object p0
.end method

.method public build-Y2RjT0g$kotlinx_serialization_core()[J
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    invoke-virtual {p0}, Lkotlinx/serialization/internal/ULongArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-string v0, "copyOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ln8/c0;->d([J)[J

    move-result-object p0

    return-object p0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    invoke-static {v0}, Ln8/c0;->k([J)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    invoke-static {v0}, Ln8/c0;->k([J)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lb9/d;->c(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln8/c0;->d([J)[J

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->buffer:[J

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/ULongArrayBuilder;->position:I

    return p0
.end method
