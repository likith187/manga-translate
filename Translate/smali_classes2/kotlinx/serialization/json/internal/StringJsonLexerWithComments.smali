.class public final Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;
.super Lkotlinx/serialization/json/internal/StringJsonLexer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/StringJsonLexer;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canConsumeValue()Z
    .locals 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->isValidValueStart(C)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public consumeNextToken()B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 4
    iput v2, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xa

    return p0
.end method

.method public consumeNextToken(C)V
    .locals 4

    .line 6
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_0

    if-ne v1, v3, :cond_1

    .line 9
    :cond_0
    iput v3, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    .line 10
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    .line 11
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 12
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    if-ne v0, p1, :cond_2

    return-void

    .line 13
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->unexpectedToken(C)V

    return-void
.end method

.method public peekNextToken()B
    .locals 3

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexerWithComments;->skipWhitespaces()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lkotlinx/serialization/json/internal/AbstractJsonLexerKt;->charToTokenClass(C)B

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xa

    return p0
.end method

.method public skipWhitespaces()I
    .locals 9

    iget v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/StringJsonLexer;->getSource()Ljava/lang/String;

    move-result-object v8

    :goto_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    const/16 v3, 0xd

    if-eq v2, v3, :cond_5

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x2f

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v0, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0xa

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v0, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "*/"

    const/4 v5, 0x0

    move-object v2, v8

    invoke-static/range {v2 .. v7}, Lkotlin/text/r;->W(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    if-eq v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const-string v2, "Expected end of the block comment: \"*/\", but had EOF instead"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->fail$default(Lkotlinx/serialization/json/internal/AbstractJsonLexer;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Ljava/lang/Void;

    new-instance p0, Ln8/i;

    invoke-direct {p0}, Ln8/i;-><init>()V

    throw p0

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    iput v0, p0, Lkotlinx/serialization/json/internal/AbstractJsonLexer;->currentPosition:I

    return v0
.end method
