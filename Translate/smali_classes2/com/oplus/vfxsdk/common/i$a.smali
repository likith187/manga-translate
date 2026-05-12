.class public final Lcom/oplus/vfxsdk/common/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/i$a;-><init>()V

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    new-instance p0, Lkotlin/text/n;

    const-string v0, "texture\\s*\\(\\s*(\\w+)\\s*,\\s*"

    invoke-direct {p0, v0}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lkotlin/text/n;->findAll$default(Lkotlin/text/n;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/f;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Lkotlin/sequences/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/text/l;

    invoke-interface {v1}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lkotlin/text/l;->c()Lb9/c;

    move-result-object v1

    invoke-virtual {v1}, Lb9/c;->g()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    move v4, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_3

    if-lez v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    const/16 v6, 0x29

    if-ne v5, v6, :cond_2

    add-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v3, :cond_0

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private final b(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    const-string p0, "void\\s+main\\s*\\(.*\\)\\s*\\{"

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_1

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    runtimeShader_uv = (u_matResolution * vec3(FragCoord, 1.0)).xy / u_resolution.xy;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    runtimeShader_FragCoord = vec4((u_matResolution * vec3(FragCoord, 1.0)).xy, 0.0, 1.0);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    runtimeShader_FragCoord.y = u_resolution.y - runtimeShader_FragCoord.y; \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    const-string p2, "\n    runtimeShader_FragColor.xyz *= runtimeShader_FragColor.a;\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p2, "\n    return runtimeShader_FragColor;\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string p2, "toString(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lkotlin/text/n;

    invoke-direct {p2, p0}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    const-string p0, "vec4 main(vec2 FragCoord) {"

    invoke-virtual {p2, p1, p0}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final c(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 20

    const-string v0, "glsl"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p2}, Lcom/oplus/vfxsdk/common/i$a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/r;->f0(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Lkotlin/text/n;

    const-string v3, "uniform\\s+mat3\\s+u_matResolution\\s*;"

    invoke-direct {v2, v3}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    new-instance v3, Lkotlin/text/n;

    const-string v4, "uniform\\s+vec2\\s+u_resolution\\s*;"

    invoke-direct {v3, v4}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    new-instance v4, Lkotlin/text/n;

    const-string v5, "uniform\\s+float\\s+u_time\\s*;"

    invoke-direct {v4, v5}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    move v9, v7

    move v11, v9

    move v12, v11

    move v13, v12

    const/4 v8, -0x1

    const/4 v10, -0x1

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_5

    add-int/lit8 v14, v9, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    move-object/from16 v16, v5

    const-string v5, "#version"

    move/from16 v17, v9

    const/4 v9, 0x0

    invoke-static {v6, v5, v7, v15, v9}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move/from16 v8, v17

    goto :goto_1

    :cond_0
    const-string v5, "precision"

    invoke-static {v6, v5, v7, v15, v9}, Lkotlin/text/r;->F(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move/from16 v10, v17

    :cond_1
    :goto_1
    invoke-virtual {v3, v6}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v11, 0x1

    :cond_2
    invoke-virtual {v4, v6}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v12, 0x1

    :cond_3
    invoke-virtual {v2, v6}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v5

    move v9, v14

    if-eqz v5, :cond_4

    move-object/from16 v5, v16

    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v5, v16

    goto :goto_0

    :cond_5
    const-string v2, "// "

    const/4 v3, -0x1

    if-eq v8, v3, :cond_6

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  // version directive is not needed in AGSL"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v8, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, -0x1

    :cond_6
    if-eq v10, v3, :cond_7

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "  // precision directive is not needed in AGSL"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v10, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    new-instance v3, Lkotlin/text/n;

    const-string v4, "uniform\\s+sampler2D\\s+(\\w+);"

    invoke-direct {v3, v4}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v5, v7

    :goto_2
    if-ge v5, v4, :cond_9

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-static {v3, v6, v7, v15, v8}, Lkotlin/text/n;->find$default(Lkotlin/text/n;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/l;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v6}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "uniform shader "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";\nuniform vec2 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_size;"

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8, v6}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_9
    if-nez v11, :cond_a

    const-string v3, "uniform vec2 u_resolution;"

    invoke-interface {v0, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_a
    if-nez v12, :cond_b

    const-string v3, "uniform float u_time;"

    invoke-interface {v0, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_b
    if-nez v13, :cond_c

    const-string v3, "uniform mat3 u_matResolution;"

    invoke-interface {v0, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_c
    const-string v3, "vec4 runtimeShader_FragCoord;"

    invoke-interface {v0, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v3, "vec2 runtimeShader_uv;"

    invoke-interface {v0, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v3, "vec4 runtimeShader_FragColor;"

    invoke-interface {v0, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_d

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/n;

    const-string v8, "gl_FragCoord"

    invoke-direct {v6, v8}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    const-string v8, "runtimeShader_FragCoord"

    invoke-virtual {v6, v5, v8}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    new-instance v3, Lkotlin/text/n;

    const-string v4, "varying\\s+(vec\\d+)\\s+(\\w+);"

    invoke-direct {v3, v4}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    new-instance v4, Lkotlin/text/n;

    const-string v5, "//\\s*RuntimeShader_uv"

    invoke-direct {v4, v5}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v6, v7

    :goto_4
    if-ge v6, v5, :cond_10

    add-int/lit8 v8, v6, -0x1

    invoke-static {v0, v8}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-eqz v8, :cond_e

    invoke-static {v8}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_e
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lkotlin/text/n;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/l;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-interface {v8}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_10
    const/4 v9, 0x0

    :goto_6
    new-instance v3, Lkotlin/text/n;

    const-string v5, "texture2D\\s*\\((\\w+),\\s*([^\\)]+)\\)"

    invoke-direct {v3, v5}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v6, v7

    :goto_7
    const-string v8, "_size)"

    if-ge v6, v5, :cond_12

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v3, v10}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    const/4 v11, 0x0

    invoke-static {v3, v10, v7, v15, v11}, Lkotlin/text/n;->find$default(Lkotlin/text/n;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/l;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {v10}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/CharSequence;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".eval("

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " * "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v13, v7}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_11
    const/4 v11, 0x0

    :goto_8
    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    goto :goto_7

    :cond_12
    const/4 v11, 0x0

    const-string v3, "runtimeShader_uv"

    const-string v5, "\\b"

    if-eqz v9, :cond_13

    new-instance v6, Lkotlin/text/n;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v7, :cond_13

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v6, v10, v3}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_13
    new-instance v6, Lkotlin/text/n;

    const-string v7, "\\bgl_FragColor\\b"

    invoke-direct {v6, v7}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_a
    const-string v10, "runtimeShader_FragColor"

    if-ge v9, v7, :cond_14

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v6, v12, v10}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v9, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_14
    new-instance v6, Lkotlin/text/n;

    const-string v7, "in\\s+(vec\\d+)\\s+(\\w+);"

    invoke-direct {v6, v7}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_b
    if-ge v9, v7, :cond_17

    add-int/lit8 v12, v9, -0x1

    invoke-static {v0, v12}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_15

    invoke-static {v12}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_c

    :cond_15
    move-object v12, v11

    :goto_c
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lkotlin/text/n;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/l;

    move-result-object v12

    if-eqz v12, :cond_16

    invoke-interface {v12}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v9, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v9, v4

    goto :goto_d

    :cond_16
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    :cond_17
    move-object v9, v11

    :goto_d
    new-instance v4, Lkotlin/text/n;

    const-string v6, "texture\\s*\\(\\s*(\\w+)\\s*,\\s*([^,)]+)"

    invoke-direct {v4, v6}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_e
    if-ge v7, v6, :cond_1a

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v4, v12}, Lkotlin/text/n;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_19

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v13, p0

    invoke-direct {v13, v12}, Lcom/oplus/vfxsdk/common/i$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_f
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln8/q;

    invoke-virtual {v14}, Ln8/q;->component1()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v11, v16

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v14}, Ln8/q;->component2()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "Texture variable: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", TexCoord variable: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v15, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v15, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    sget-object v4, Lkotlin/text/n;->Companion:Lkotlin/text/n$a;

    invoke-virtual {v4, v14}, Lkotlin/text/n$a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v15, Lkotlin/text/n;

    move/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v12

    const-string v12, "texture\\s*\\(\\s*"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\\s*,\\s*"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\\s*\\)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".eval(("

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") * "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v4, v6}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v7, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v17

    move/from16 v6, v18

    move-object/from16 v12, v19

    const/4 v11, 0x0

    const/4 v15, 0x2

    goto/16 :goto_f

    :cond_18
    :goto_10
    move-object/from16 v17, v4

    move/from16 v18, v6

    goto :goto_11

    :cond_19
    move-object/from16 v13, p0

    goto :goto_10

    :goto_11
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v17

    move/from16 v6, v18

    const/4 v11, 0x0

    const/4 v15, 0x2

    goto/16 :goto_e

    :cond_1a
    new-instance v4, Lkotlin/text/n;

    const-string v6, "out\\s+(vec4)\\s+(\\w+);"

    invoke-direct {v4, v6}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_12
    if-ge v8, v6, :cond_1d

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Lkotlin/text/r;->N0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lkotlin/text/n;->matchEntire(Ljava/lang/CharSequence;)Lkotlin/text/l;

    move-result-object v11

    if-eqz v11, :cond_1c

    invoke-interface {v11}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string v14, "vec4"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Lkotlin/text/l;->a()Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x2

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    goto :goto_13

    :cond_1b
    const/4 v11, 0x2

    goto :goto_13

    :cond_1c
    const/4 v11, 0x2

    const/4 v13, 0x1

    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    :cond_1d
    if-eqz v9, :cond_1e

    new-instance v2, Lkotlin/text/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_14
    if-ge v6, v4, :cond_1e

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v2, v8, v3}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v6, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    :cond_1e
    if-eqz v7, :cond_1f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_15
    if-ge v3, v2, :cond_1f

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    new-instance v6, Lkotlin/text/n;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v10}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_1f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_20
    sget-object v0, Lcom/oplus/vfxsdk/common/v;->d:Lcom/oplus/vfxsdk/common/v$a;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/common/v$a;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " ------------ start -------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    const-string v2, " ------------ end --------------"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
