.class public abstract Lkotlinx/serialization/json/internal/AbstractJsonLexer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public currentPosition:I

.field private escapedString:Ljava/lang/StringBuilder;

.field public final path:Lkotlinx/serialization/json/internal/JsonPath;

.field private peekedString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/serialization/json/internal/JsonPath;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/JsonPath;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method private final appendEsc(I)I
    .locals 7

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 v0, 0x75

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendHex(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->escapeToChar(I)C

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escaped char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Expected escape sequence to continue, got EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method private final appendEscape(II)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEsc(I)I

    move-result p0

    return p0
.end method

.method private final appendHex(Ljava/lang/CharSequence;I)I
    .locals 6

    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->ensureHaveChars()V

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 p2, p2, 0x4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendHex(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected EOF during unicode escape"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_1
    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    add-int/lit8 p2, p2, 0x3

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fromHexChar(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    int-to-char p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0
.end method

.method private final consumeBoolean(I)Z
    .locals 7

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    or-int/lit8 p1, p1, 0x20

    const/16 v0, 0x66

    if-eq p1, v0, :cond_1

    const/16 v0, 0x74

    if-ne p1, v0, :cond_0

    .line 5
    const-string p1, "rue"

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    const/4 p0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected valid boolean literal prefix, but had \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    .line 7
    :cond_1
    const-string p1, "alse"

    invoke-direct {p0, p1, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBooleanLiteral(Ljava/lang/String;I)V

    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 8
    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method private final consumeBooleanLiteral(Ljava/lang/String;I)V
    .locals 6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v3

    add-int v4, p2, v1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    or-int/lit8 v3, v3, 0x20

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected valid boolean literal prefix, but had \'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x27

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-void

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected end of boolean literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method private static final consumeNumericLiteral$calculateExponent(JZ)D
    .locals 3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    if-nez p2, :cond_0

    long-to-double p0, p0

    neg-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1

    long-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Ln8/o;

    invoke-direct {p0}, Ln8/o;-><init>()V

    throw p0
.end method

.method private final decodedString(II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method public static synthetic fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json(BZ)Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: fail"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final fromHexChar(Ljava/lang/CharSequence;I)I
    .locals 6

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    if-gt p2, p1, :cond_0

    const/16 v0, 0x3a

    if-ge p1, v0, :cond_0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/16 p2, 0x61

    if-gt p2, p1, :cond_1

    const/16 p2, 0x67

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    const/16 p2, 0x41

    if-gt p2, p1, :cond_2

    const/16 p2, 0x47

    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, -0x37

    :goto_0
    return p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid toHexChar char \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method private final insideString(ZC)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    move p0, v0

    goto :goto_1

    :cond_0
    const/16 p1, 0x22

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return p0
.end method

.method public static synthetic require$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;ZILw8/a;ILjava/lang/Object;)V
    .locals 6

    if-nez p5, :cond_2

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :cond_0
    move v2, p2

    const-string p2, "message"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-interface {p3}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: require"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final takePeeked()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic tryConsumeNull$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;ZILjava/lang/Object;)Z
    .locals 0

    if-nez p3, :cond_1

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->tryConsumeNull(Z)Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: tryConsumeNull"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final wasUnquotedString()Z
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    iget p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final withPositionRollback(Lw8/a;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw8/a;",
            ")TT;"
        }
    .end annotation

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lkotlin/jvm/internal/p;->b(I)V

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(I)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/p;->b(I)V

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-static {v1}, Lkotlin/jvm/internal/p;->a(I)V

    throw p1
.end method

.method private final writeRange(IIZLw8/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method protected appendRange(II)V
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public abstract canConsumeValue()Z
.end method

.method public final consumeBoolean()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final consumeBooleanLenient()Z
    .locals 8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeBoolean(I)Z

    move-result v0

    if-eqz v1, :cond_3

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    iget v4, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/2addr v1, v3

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "Expected closing quotation mark"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_2
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method public abstract consumeKeyString()Ljava/lang/String;
.end method

.method public abstract consumeNextToken()B
.end method

.method public final consumeNextToken(B)B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    if-ne v0, p1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {p0, p1, v2, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method public abstract consumeNextToken(C)V
.end method

.method public final consumeNumericLiteral()J
    .locals 17

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v1

    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_1a

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    move v8, v1

    move-wide v11, v6

    move-wide v13, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    const/4 v15, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v8, v4, :cond_e

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x65

    if-eq v4, v5, :cond_2

    const/16 v5, 0x45

    if-ne v4, v5, :cond_4

    :cond_2
    if-nez v9, :cond_4

    if-eq v8, v1, :cond_3

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    :goto_3
    const/4 v15, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected symbol "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_4
    const/16 v5, 0x2d

    if-ne v4, v5, :cond_6

    if-eqz v9, :cond_6

    if-eq v8, v1, :cond_5

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_6
    const/16 v3, 0x2b

    if-ne v4, v3, :cond_8

    if-eqz v9, :cond_8

    if-eq v8, v1, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x22

    goto :goto_3

    :cond_7
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_8
    if-ne v4, v5, :cond_a

    if-ne v8, v1, :cond_9

    add-int/lit8 v8, v8, 0x1

    const/16 v3, 0x22

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Unexpected symbol \'-\' in numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_a
    invoke-static {v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v3

    if-nez v3, :cond_e

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v4, -0x30

    if-ltz v3, :cond_d

    const/16 v5, 0xa

    if-ge v3, v5, :cond_d

    if-eqz v9, :cond_b

    int-to-long v4, v5

    mul-long/2addr v13, v4

    int-to-long v3, v3

    add-long/2addr v13, v3

    :goto_4
    const/16 v3, 0x22

    goto/16 :goto_2

    :cond_b
    int-to-long v4, v5

    mul-long/2addr v11, v4

    int-to-long v3, v3

    sub-long/2addr v11, v3

    cmp-long v3, v11, v6

    if-gtz v3, :cond_c

    goto :goto_4

    :cond_c
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Numeric value overflow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected symbol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "\' in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_e
    if-eq v8, v1, :cond_f

    const/4 v4, 0x1

    goto :goto_5

    :cond_f
    const/4 v4, 0x0

    :goto_5
    if-eq v1, v8, :cond_19

    if-eqz v10, :cond_10

    add-int/lit8 v3, v8, -0x1

    if-eq v1, v3, :cond_19

    :cond_10
    if-eqz v2, :cond_13

    if-eqz v4, :cond_12

    invoke-virtual/range {p0 .. p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_11

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_11
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Expected closing quotation mark"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_12
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_13
    :goto_6
    iput v8, v0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-eqz v9, :cond_16

    long-to-double v1, v11

    invoke-static {v13, v14, v15}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNumericLiteral$calculateExponent(JZ)D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_15

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_15

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-nez v3, :cond_14

    double-to-long v11, v1

    goto :goto_7

    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " to Long"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_15
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Numeric value overflow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_16
    :goto_7
    if-eqz v10, :cond_17

    goto :goto_8

    :cond_17
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v11, v1

    if-eqz v1, :cond_18

    neg-long v11, v11

    :goto_8
    return-wide v11

    :cond_18
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Numeric value overflow"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_19
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "Expected numeric literal"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0

    :cond_1a
    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "EOF"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance v0, Ln8/i;

    invoke-direct {v0}, Ln8/i;-><init>()V

    throw v0
.end method

.method public final consumeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final consumeString(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 11

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x22

    const/4 v3, 0x1

    if-eq v0, v2, :cond_4

    const/16 v2, 0x5c

    const/4 v4, -0x1

    if-ne v0, v2, :cond_1

    .line 5
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEscape(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v7

    if-eq v7, v4, :cond_0

    :goto_1
    move v1, v3

    move p2, v7

    move p3, p2

    goto :goto_2

    :cond_0
    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 6
    const-string v6, "Unexpected EOF"

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p3, v0, :cond_3

    .line 8
    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    .line 9
    invoke-virtual {p0, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v7

    if-eq v7, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x4

    const/4 v10, 0x0

    .line 10
    const-string v6, "Unexpected EOF"

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    .line 11
    :cond_3
    :goto_2
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    .line 12
    invoke-virtual {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 13
    :cond_5
    invoke-direct {p0, p2, p3}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object p1

    :goto_3
    add-int/2addr p3, v3

    .line 14
    iput p3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-object p1
.end method

.method public consumeStringChunked(ZLw8/l;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lw8/l;",
            ")V"
        }
    .end annotation

    const-string v0, "consumeChunk"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x22

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    :cond_1
    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    move v2, v1

    :goto_0
    invoke-direct {p0, p1, v4}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->insideString(ZC)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p1, :cond_2

    const/16 v6, 0x5c

    if-ne v4, v6, :cond_2

    invoke-direct {p0, v1, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendEscape(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v1

    const/4 v5, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    move v12, v2

    move v2, v1

    move v1, v12

    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v1, v4, :cond_4

    invoke-direct {p0, v2, v1, v5, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->writeRange(IIZLw8/l;)V

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v8

    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    move v5, v3

    move v1, v8

    move v2, v1

    goto :goto_2

    :cond_3
    const/4 v10, 0x4

    const/4 v11, 0x0

    const-string v7, "EOF"

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v6 .. v11}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_4
    move v12, v2

    move v2, v1

    move v1, v12

    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1, v2, v5, p2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->writeRange(IIZLw8/l;)V

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-nez p1, :cond_6

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken(C)V

    :cond_6
    return-void
.end method

.method public final consumeStringLenient()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->takePeeked()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v2, v0, :cond_7

    const/4 v0, -0x1

    if-eq v2, v0, :cond_7

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez v1, :cond_6

    const/4 v1, 0x0

    move v4, v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v5

    if-nez v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lt v2, v5, :cond_2

    iget v4, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v4, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->appendRange(II)V

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v4

    if-ne v4, v0, :cond_3

    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, v1, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    move v2, v4

    move v4, v3

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-direct {p0, v0, v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->decodedString(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected beginning of the string, but got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_7
    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "EOF"

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method public final consumeStringLenientNotNull()Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->wasUnquotedString()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x6

    const/4 v7, 0x0

    const-string v3, "Unexpected \'null\' value instead of string literal"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public final discardPeeked()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    return-void
.end method

.method public ensureHaveChars()V
    .locals 0

    return-void
.end method

.method public final expectEof()V
    .locals 8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected EOF after parsing, but had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method public final fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at path: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/JsonPath;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0
.end method

.method public final fail$kotlinx_serialization_json(BZ)Ljava/lang/Void;
    .locals 6

    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->tokenDescription(B)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 p2, p2, -0x1

    :goto_0
    move v2, p2

    goto :goto_1

    :cond_0
    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    goto :goto_0

    :goto_1
    iget p2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq p2, v0, :cond_2

    if-gez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_2
    :goto_2
    const-string p2, "EOF"

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but had \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method public final failOnUnknownKey(Ljava/lang/String;)V
    .locals 8

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->c0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered an unknown key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {p0, p1, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method protected final getEscapedString()Ljava/lang/StringBuilder;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method protected abstract getSource()Ljava/lang/CharSequence;
.end method

.method public indexOf(CI)I
    .locals 6

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isNotEof()Z
    .locals 1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isValidValueStart(C)Z
    .locals 0

    const/16 p0, 0x2c

    if-eq p1, p0, :cond_0

    const/16 p0, 0x3a

    if-eq p1, p0, :cond_0

    const/16 p0, 0x5d

    if-eq p1, p0, :cond_0

    const/16 p0, 0x7d

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final isWs(C)Z
    .locals 0

    const/16 p0, 0x20

    if-eq p1, p0, :cond_1

    const/16 p0, 0xa

    if-eq p1, p0, :cond_1

    const/16 p0, 0xd

    if-eq p1, p0, :cond_1

    const/16 p0, 0x9

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public abstract peekLeadingMatchingValue(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public peekNextToken()B
    .locals 5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v0

    iget v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :goto_0
    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v1

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-static {v2}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v3
.end method

.method public final peekString(Z)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eq v0, v2, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekedString:Ljava/lang/String;

    return-object p1
.end method

.method public abstract prefetchOrEof(I)I
.end method

.method public final require$kotlinx_serialization_json(ZILw8/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lw8/a;",
            ")V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p3}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    invoke-static/range {v0 .. v5}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method

.method protected final setEscapedString(Ljava/lang/StringBuilder;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->escapedString:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final skipElement(Z)V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v2, 0x6

    const/16 v3, 0x8

    if-eq v1, v3, :cond_0

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    return-void

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->peekNextToken()B

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeKeyString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-eq v1, v3, :cond_9

    if-ne v1, v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x9

    if-ne v1, v4, :cond_5

    invoke-static {v0}, Lkotlin/collections/o;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v3, :cond_4

    invoke-static {v0}, Lkotlin/collections/o;->B(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found ] instead of } at path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_5
    const/4 v4, 0x7

    if-ne v1, v4, :cond_7

    invoke-static {v0}, Lkotlin/collections/o;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v2, :cond_6

    invoke-static {v0}, Lkotlin/collections/o;->B(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "found } instead of ] at path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->path:Lkotlinx/serialization/json/internal/JsonPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/json/internal/JsonExceptionsKt;->JsonDecodingException(ILjava/lang/String;Ljava/lang/CharSequence;)Lkotlinx/serialization/json/internal/JsonDecodingException;

    move-result-object p0

    throw p0

    :cond_7
    const/16 v4, 0xa

    if-eq v1, v4, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x6

    const/4 v10, 0x0

    const-string v6, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_9
    :goto_1
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeNextToken()B

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void
.end method

.method public abstract skipWhitespaces()I
.end method

.method public substring(II)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonReader(source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryConsumeComma()Z
    .locals 4

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public final tryConsumeNull(Z)Z
    .locals 8

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->prefetchOrEof(I)I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_5

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v6

    add-int v7, v0, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->getSource()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v4, v0, 0x4

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    if-eqz p1, :cond_4

    add-int/2addr v0, v3

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_1
    return v2
.end method

.method protected final unexpectedToken(C)V
    .locals 3

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-lez v0, :cond_0

    const/16 v1, 0x22

    if-ne p1, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    :try_start_0
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->consumeStringLenient()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const-string v0, "null"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    add-int/lit8 p1, p1, -0x1

    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls if property has a default value."

    const-string v1, "Expected string literal but \'null\' literal was found"

    invoke-virtual {p0, v1, p1, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :catchall_0
    move-exception p1

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    throw p1

    :cond_0
    invoke-static {p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$kotlinx_serialization_json$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;BZILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0
.end method
