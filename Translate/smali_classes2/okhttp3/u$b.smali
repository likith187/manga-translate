.class public final Lokhttp3/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/u$b;-><init>()V

    return-void
.end method

.method public static synthetic b(Lokhttp3/u$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;
    .locals 13

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v6, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move v8, v2

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    move v9, v2

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    move v10, v2

    goto :goto_4

    :cond_4
    move/from16 v10, p7

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    move v11, v2

    goto :goto_5

    :cond_5
    move/from16 v11, p8

    :goto_5
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    move-object v3, p0

    move-object v4, p1

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v12}, Lokhttp3/u$b;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final e(Ljava/lang/String;II)Z
    .locals 1

    add-int/lit8 p0, p2, 0x2

    if-ge p0, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v0, 0x25

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    add-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Li9/d;->G(C)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Li9/d;->G(C)I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method public static synthetic h(Lokhttp3/u$b;Ljava/lang/String;IIZILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/u$b;->g(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final l(Lt9/d;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V
    .locals 14

    move-object v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p10

    const/4 v4, 0x0

    move/from16 v5, p3

    move-object v6, v4

    :goto_0
    if-ge v5, v2, :cond_d

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-eqz p6, :cond_1

    const/16 v8, 0x9

    if-eq v7, v8, :cond_0

    const/16 v8, 0xa

    if-eq v7, v8, :cond_0

    const/16 v8, 0xc

    if-eq v7, v8, :cond_0

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1

    :cond_0
    :goto_1
    move-object v8, p0

    move-object/from16 v12, p5

    goto/16 :goto_8

    :cond_1
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_3

    if-eqz p8, :cond_3

    if-eqz p6, :cond_2

    const-string v8, "+"

    goto :goto_2

    :cond_2
    const-string v8, "%2B"

    :goto_2
    invoke-virtual {p1, v8}, Lt9/d;->T0(Ljava/lang/String;)Lt9/d;

    goto :goto_1

    :cond_3
    const/16 v8, 0x20

    const/16 v9, 0x25

    if-lt v7, v8, :cond_4

    const/16 v8, 0x7f

    if-eq v7, v8, :cond_4

    const/16 v8, 0x80

    if-lt v7, v8, :cond_5

    if-eqz p9, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, p0

    move-object/from16 v12, p5

    goto :goto_5

    :cond_5
    :goto_3
    int-to-char v8, v7

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-object/from16 v12, p5

    invoke-static {v12, v8, v10, v11, v4}, Lkotlin/text/r;->J(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    if-ne v7, v9, :cond_6

    if-eqz p6, :cond_7

    if-eqz p7, :cond_6

    move-object v8, p0

    invoke-direct {p0, v1, v5, v2}, Lokhttp3/u$b;->e(Ljava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_5

    :cond_6
    move-object v8, p0

    goto :goto_4

    :cond_7
    move-object v8, p0

    goto :goto_5

    :cond_8
    :goto_4
    invoke-virtual {p1, v7}, Lt9/d;->V0(I)Lt9/d;

    goto :goto_8

    :goto_5
    if-nez v6, :cond_9

    new-instance v6, Lt9/d;

    invoke-direct {v6}, Lt9/d;-><init>()V

    :cond_9
    if-eqz v3, :cond_b

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v6, v1, v5, v10, v3}, Lt9/d;->S0(Ljava/lang/String;IILjava/nio/charset/Charset;)Lt9/d;

    goto :goto_7

    :cond_b
    :goto_6
    invoke-virtual {v6, v7}, Lt9/d;->V0(I)Lt9/d;

    :goto_7
    invoke-virtual {v6}, Lt9/d;->S()Z

    move-result v10

    if-nez v10, :cond_c

    invoke-virtual {v6}, Lt9/d;->C0()B

    move-result v10

    and-int/lit16 v11, v10, 0xff

    invoke-virtual {p1, v9}, Lt9/d;->O0(I)Lt9/d;

    invoke-static {}, Lokhttp3/u;->a()[C

    move-result-object v13

    shr-int/lit8 v11, v11, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v13, v11

    invoke-virtual {p1, v11}, Lt9/d;->O0(I)Lt9/d;

    invoke-static {}, Lokhttp3/u;->a()[C

    move-result-object v11

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v11, v10

    invoke-virtual {p1, v10}, Lt9/d;->O0(I)Lt9/d;

    goto :goto_7

    :cond_c
    :goto_8
    invoke-static {v7}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v5, v7

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method private final m(Lt9/d;Ljava/lang/String;IIZ)V
    .locals 4

    :goto_0
    if-ge p3, p4, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    const/16 v0, 0x25

    if-ne p0, v0, :cond_0

    add-int/lit8 v0, p3, 0x2

    if-ge v0, p4, :cond_0

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Li9/d;->G(C)I

    move-result v1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Li9/d;->G(C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eq v2, v3, :cond_1

    shl-int/lit8 p3, v1, 0x4

    add-int/2addr p3, v2

    invoke-virtual {p1, p3}, Lt9/d;->O0(I)Lt9/d;

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int p3, v0, p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_1

    if-eqz p5, :cond_1

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Lt9/d;->O0(I)Lt9/d;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lt9/d;->V0(I)Lt9/d;

    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr p3, p0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 12

    move-object v2, p1

    move v4, p3

    move-object/from16 v5, p4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodeSet"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v3, p2

    :goto_0
    if-ge v3, v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    if-eqz p8, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    goto :goto_3

    :cond_1
    :goto_1
    int-to-char v1, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v1, v8, v6, v7}, Lkotlin/text/r;->J(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2

    if-eqz p5, :cond_0

    if-eqz p6, :cond_2

    move-object v1, p0

    invoke-direct {p0, p1, v3, p3}, Lokhttp3/u$b;->e(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    :cond_2
    move-object v1, p0

    :goto_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_3

    if-eqz p7, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_4
    :goto_3
    new-instance v11, Lt9/d;

    invoke-direct {v11}, Lt9/d;-><init>()V

    move v0, p2

    invoke-virtual {v11, p1, p2, v3}, Lt9/d;->U0(Ljava/lang/String;II)Lt9/d;

    move-object v0, p0

    move-object v1, v11

    move-object v2, p1

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lokhttp3/u$b;->l(Lt9/d;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V

    invoke-virtual {v11}, Lt9/d;->D0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    move v0, p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final c(Ljava/lang/String;)I
    .locals 0

    const-string p0, "scheme"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "http"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const-string p0, "https"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x1bb

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final d(Ljava/lang/String;)Lokhttp3/u;
    .locals 1

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/u$a;

    invoke-direct {p0}, Lokhttp3/u$a;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lokhttp3/u$a;->i(Lokhttp3/u;Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u$a;->b()Lokhttp3/u;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/String;)Lokhttp3/u;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/u$b;->d(Ljava/lang/String;)Lokhttp3/u;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final g(Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v4, p2

    :goto_0
    if-ge v4, p3, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    new-instance v0, Lt9/d;

    invoke-direct {v0}, Lt9/d;-><init>()V

    invoke-virtual {v0, p1, p2, v4}, Lt9/d;->U0(Ljava/lang/String;II)Lt9/d;

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lokhttp3/u$b;->m(Lt9/d;Ljava/lang/String;IIZ)V

    invoke-virtual {v0}, Lt9/d;->D0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 2

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "out"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)Ljava/util/List;
    .locals 9

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x26

    const/4 v4, 0x0

    move-object v1, p1

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    move v8, v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/16 v2, 0x3d

    const/4 v4, 0x0

    move-object v1, p1

    move v3, v0

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const-string v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    if-eq v1, v7, :cond_2

    if-le v1, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v8, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public final k(Ljava/util/List;Ljava/lang/StringBuilder;)V
    .locals 5

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "out"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lb9/d;->l(II)Lb9/c;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lb9/d;->k(Lb9/a;I)Lb9/a;

    move-result-object p0

    invoke-virtual {p0}, Lb9/a;->a()I

    move-result v0

    invoke-virtual {p0}, Lb9/a;->c()I

    move-result v1

    invoke-virtual {p0}, Lb9/a;->d()I

    move-result p0

    if-lez p0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    if-gez p0, :cond_4

    if-gt v1, v0, :cond_4

    :cond_1
    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v0, :cond_2

    const/16 v4, 0x26

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const/16 v2, 0x3d

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eq v0, v1, :cond_4

    add-int/2addr v0, p0

    goto :goto_0

    :cond_4
    return-void
.end method
