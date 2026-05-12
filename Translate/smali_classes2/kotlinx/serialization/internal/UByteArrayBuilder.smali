.class public final Lkotlinx/serialization/internal/UByteArrayBuilder;
.super Lkotlinx/serialization/internal/PrimitiveArrayBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/internal/PrimitiveArrayBuilder<",
        "Ln8/y;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlinx/serialization/ExperimentalSerializationApi;
.end annotation


# instance fields
.field private buffer:[B

.field private position:I


# direct methods
.method private constructor <init>([B)V
    .locals 1

    const-string v0, "bufferWithData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;-><init>()V

    .line 3
    iput-object p1, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->buffer:[B

    .line 4
    invoke-static {p1}, Ln8/y;->k([B)I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->position:I

    const/16 p1, 0xa

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/UByteArrayBuilder;->ensureCapacity$kotlinx_serialization_core(I)V

    return-void
.end method

.method public synthetic constructor <init>([BLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/serialization/internal/UByteArrayBuilder;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final append-7apg3OU$kotlinx_serialization_core(B)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lkotlinx/serialization/internal/PrimitiveArrayBuilder;->ensureCapacity$kotlinx_serialization_core$default(Lkotlinx/serialization/internal/PrimitiveArrayBuilder;IILjava/lang/Object;)V

    iget-object v0, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->buffer:[B

    invoke-virtual {p0}, Lkotlinx/serialization/internal/UByteArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->position:I

    invoke-static {v0, v1, p1}, Ln8/y;->o([BIB)V

    return-void
.end method

.method public bridge synthetic build$kotlinx_serialization_core()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/internal/UByteArrayBuilder;->build-TcUX1vc$kotlinx_serialization_core()[B

    move-result-object p0

    invoke-static {p0}, Ln8/y;->a([B)Ln8/y;

    move-result-object p0

    return-object p0
.end method

.method public build-TcUX1vc$kotlinx_serialization_core()[B
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->buffer:[B

    invoke-virtual {p0}, Lkotlinx/serialization/internal/UByteArrayBuilder;->getPosition$kotlinx_serialization_core()I

    move-result p0

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "copyOf(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ln8/y;->d([B)[B

    move-result-object p0

    return-object p0
.end method

.method public ensureCapacity$kotlinx_serialization_core(I)V
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->buffer:[B

    invoke-static {v0}, Ln8/y;->k([B)I

    move-result v0

    if-ge v0, p1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->buffer:[B

    invoke-static {v0}, Ln8/y;->k([B)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {p1, v1}, Lb9/d;->c(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    const-string v0, "copyOf(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln8/y;->d([B)[B

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->buffer:[B

    :cond_0
    return-void
.end method

.method public getPosition$kotlinx_serialization_core()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/internal/UByteArrayBuilder;->position:I

    return p0
.end method
