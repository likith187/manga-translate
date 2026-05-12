.class public final Lokhttp3/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/u$a;,
        Lokhttp3/u$b;
    }
.end annotation


# static fields
.field public static final k:Lokhttp3/u$b;

.field private static final l:[C


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/u$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/u;->k:Lokhttp3/u$b;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokhttp3/u;->l:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "scheme"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pathSegments"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/u;->a:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/u;->c:Ljava/lang/String;

    iput-object p4, p0, Lokhttp3/u;->d:Ljava/lang/String;

    iput p5, p0, Lokhttp3/u;->e:I

    iput-object p6, p0, Lokhttp3/u;->f:Ljava/util/List;

    iput-object p7, p0, Lokhttp3/u;->g:Ljava/util/List;

    iput-object p8, p0, Lokhttp3/u;->h:Ljava/lang/String;

    iput-object p9, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const-string p2, "https"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lokhttp3/u;->j:Z

    return-void
.end method

.method public static final synthetic a()[C
    .locals 1

    sget-object v0, Lokhttp3/u;->l:[C

    return-object v0
.end method

.method public static final l(Ljava/lang/String;)Lokhttp3/u;
    .locals 1

    sget-object v0, Lokhttp3/u;->k:Lokhttp3/u$b;

    invoke-virtual {v0, p0}, Lokhttp3/u$b;->f(Ljava/lang/String;)Lokhttp3/u;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lokhttp3/u;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x23

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lokhttp3/u;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/u;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x3a

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/16 v2, 0x40

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/u;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const-string v2, "?#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Li9/d;->p(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final e()Ljava/util/List;
    .locals 6

    iget-object v0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/u;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v1, 0x2f

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const-string v2, "?#"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Li9/d;->p(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-static {v3, v4, v0, v1}, Li9/d;->o(Ljava/lang/String;CII)I

    move-result v3

    iget-object v4, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lokhttp3/u;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/u;

    iget-object p1, p1, Lokhttp3/u;->i:Ljava/lang/String;

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lokhttp3/u;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lkotlin/text/r;->V(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Li9/d;->o(Ljava/lang/String;CII)I

    move-result v1

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lokhttp3/u;->b:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lokhttp3/u;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lokhttp3/u;->i:Ljava/lang/String;

    const-string v2, ":@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v2, v0, v3}, Li9/d;->p(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v1

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/u;->d:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/u;->j:Z

    return p0
.end method

.method public final j()Lokhttp3/u$a;
    .locals 4

    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    iget-object v1, p0, Lokhttp3/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/u$a;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/u;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/u$a;->s(Ljava/lang/String;)V

    invoke-virtual {p0}, Lokhttp3/u;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/u$a;->r(Ljava/lang/String;)V

    iget-object v1, p0, Lokhttp3/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/u$a;->t(Ljava/lang/String;)V

    iget v1, p0, Lokhttp3/u;->e:I

    sget-object v2, Lokhttp3/u;->k:Lokhttp3/u$b;

    iget-object v3, p0, Lokhttp3/u;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lokhttp3/u$b;->c(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lokhttp3/u;->e:I

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Lokhttp3/u$a;->u(I)V

    invoke-virtual {v0}, Lokhttp3/u$a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {v0}, Lokhttp3/u$a;->e()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/u;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lokhttp3/u;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/u$a;->d(Ljava/lang/String;)Lokhttp3/u$a;

    invoke-virtual {p0}, Lokhttp3/u;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/u$a;->q(Ljava/lang/String;)V

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Lokhttp3/u$a;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lokhttp3/u$a;

    invoke-direct {v0}, Lokhttp3/u$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lokhttp3/u$a;->i(Lokhttp3/u;Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final m()I
    .locals 0

    iget p0, p0, Lokhttp3/u;->e:I

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lokhttp3/u;->g:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lokhttp3/u;->k:Lokhttp3/u$b;

    iget-object p0, p0, Lokhttp3/u;->g:Ljava/util/List;

    invoke-virtual {v1, p0, v0}, Lokhttp3/u$b;->k(Ljava/util/List;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lokhttp3/u;->k(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lokhttp3/u$a;->w(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p0

    invoke-virtual {p0, v0}, Lokhttp3/u$a;->j(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u$a;->b()Lokhttp3/u;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lokhttp3/u;
    .locals 1

    const-string v0, "link"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lokhttp3/u;->k(Ljava/lang/String;)Lokhttp3/u$a;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/u$a;->b()Lokhttp3/u;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/u;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final r()Ljava/net/URI;
    .locals 3

    invoke-virtual {p0}, Lokhttp3/u;->j()Lokhttp3/u$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u$a;->n()Lokhttp3/u$a;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/u$a;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lkotlin/text/n;

    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    invoke-direct {v1, v2}, Lkotlin/text/n;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, p0, v2}, Lkotlin/text/n;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string p0, "{\n      // Unlikely edge\u2026Unexpected!\n      }\n    }"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final s()Ljava/net/URL;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/u;->i:Ljava/lang/String;

    return-object p0
.end method
