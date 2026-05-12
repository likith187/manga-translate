.class public final Lkotlinx/serialization/json/internal/ArrayAsSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# instance fields
.field private final buffer:[C

.field private length:I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    array-length p1, p1

    iput p1, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length:I

    return-void
.end method


# virtual methods
.method public final bridge charAt(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->get(I)C

    move-result p0

    return p0
.end method

.method public get(I)C
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public final getBuffer$kotlinx_serialization_json()[C
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length:I

    return p0
.end method

.method public final bridge length()I
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->getLength()I

    move-result p0

    return p0
.end method

.method public setLength(I)V
    .locals 0

    iput p1, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length:I

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p1, p0}, Lkotlin/text/r;->r([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final substring(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v0, p1, p0}, Lkotlin/text/r;->r([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trim(I)V
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/ArrayAsSequence;->buffer:[C

    array-length v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->setLength(I)V

    return-void
.end method
