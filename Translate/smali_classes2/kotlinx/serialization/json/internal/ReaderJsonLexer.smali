.class public Lkotlinx/serialization/json/internal/ReaderJsonLexer;
.super Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.source "SourceFile"


# instance fields
.field private final buffer:[C

.field private final reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

.field private final source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

.field protected threshold:I


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;-><init>()V

    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

    .line 5
    iput-object p2, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    const/16 p1, 0x80

    .line 6
    iput p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    .line 7
    new-instance p1, Lkotlinx/serialization/json/internal/ArrayAsSequence;

    invoke-direct {p1, p2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;-><init>([C)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->preload(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[CILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    sget-object p2, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;

    invoke-virtual {p2}, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->take()[C

    move-result-object p2

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;-><init>(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V

    return-void
.end method

.method private final preload(I)V
    .locals 5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->getBuffer$kotlinx_serialization_json()[C

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int v3, v2, p1

    invoke-static {v0, v0, v1, v2, v3}, Lkotlin/collections/i;->h([C[CIII)[C

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v2

    :goto_0
    if-eq p1, v2, :cond_2

    iget-object v3, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

    sub-int v4, v2, p1

    invoke-interface {v3, v0, p1, v4}, Lkotlinx/serialization/json/internal/InternalJsonReader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->trim(I)V

    iput v4, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    goto :goto_1

    :cond_1
    add-int/2addr p1, v3

    goto :goto_0

    :cond_2
    :goto_1
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-void
.end method


# virtual methods
.method protected appendRange(II)V
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getEscapedString()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->getBuffer$kotlinx_serialization_json()[C

    move-result-object p0

    sub-int/2addr p2, p1

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string p0, "append(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canConsumeValue()Z
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->isValidValueStart(C)Z

    move-result p0

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 p0, 0x0

    return p0
.end method

.method public consumeKeyString()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->consumeNextToken(C)V

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->indexOf(CI)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v1, v2, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v3

    invoke-virtual {v3, v2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public consumeNextToken()B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 3
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 4
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    .line 6
    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 7
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 8
    :cond_1
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/16 p0, 0xa

    return p0
.end method

.method public consumeNextToken(C)V
    .locals 4

    .line 9
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    .line 10
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    .line 11
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 12
    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    const/16 v3, 0x9

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-ne v1, p1, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_0

    .line 16
    :cond_3
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 17
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    return-void
.end method

.method public ensureHaveChars()V
    .locals 2

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->threshold:I

    if-le v1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->preload(I)V

    return-void
.end method

.method public final getBuffer()[C
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    return-object p0
.end method

.method public final getReader()Lkotlinx/serialization/json/internal/InternalJsonReader;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->reader:Lkotlinx/serialization/json/internal/InternalJsonReader;

    return-object p0
.end method

.method public bridge synthetic getSource()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;
    .locals 0

    .line 2
    iget-object p0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->source:Lkotlinx/serialization/json/internal/ArrayAsSequence;

    return-object p0
.end method

.method public indexOf(CI)I
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v0

    :goto_0
    if-ge p2, v0, :cond_1

    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    return p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    const-string p0, "keyToMatch"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public prefetchOrEof(I)I
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    iput p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->ensureHaveChars()V

    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method public final release()V
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->buffer:[C

    invoke-virtual {v0, p0}, Lkotlinx/serialization/json/internal/CharArrayPoolBatchSize;->release([C)V

    return-void
.end method

.method public skipWhitespaces()I
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :goto_0
    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->prefetchOrEof(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/ReaderJsonLexer;->getSource()Lkotlinx/serialization/json/internal/ArrayAsSequence;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/ArrayAsSequence;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
