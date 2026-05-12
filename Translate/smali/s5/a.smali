.class public Ls5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/util/LruCache;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lr5/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Ls5/a;->a:Landroid/util/LruCache;

    iput-object p1, p0, Ls5/a;->b:Landroid/content/Context;

    const-string v0, "android"

    invoke-static {p1, v0}, Lw5/b;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ls5/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ls5/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lw5/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ls5/a;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Ls5/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lu5/a;

    move-result-object v0

    iget-object p0, p0, Ls5/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu5/a;

    const/4 p1, 0x0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lu5/a;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lu5/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    return p1

    :cond_2
    invoke-virtual {v0}, Lu5/a;->c()[B

    move-result-object p1

    invoke-virtual {p0}, Lu5/a;->c()[B

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Ls5/a;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/String;Lu5/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Lu5/a;->e()V

    invoke-virtual {p2}, Lu5/a;->h()V

    invoke-virtual {p2, p3}, Lu5/a;->g(Ljava/lang/String;)V

    iget-object p0, p0, Ls5/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object p0, p0, Ls5/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lu5/a;

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const-string v1, "."

    invoke-static {p2, v1}, Lw5/h;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v2, v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, "epona"

    invoke-virtual {p0, v1, p2}, Lu5/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v1, p3}, Lu5/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v4

    :goto_1
    const-string v2, "tingle"

    invoke-virtual {p0, v2, p2}, Lu5/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v2, p3}, Lu5/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v0

    goto :goto_3

    :cond_4
    :goto_2
    move p0, v4

    :goto_3
    if-nez v1, :cond_5

    if-eqz p0, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] is re-wrapped form Tingle, Caller : ["

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw5/d;->b(Ljava/lang/String;)V

    :cond_5
    if-nez v1, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    move v0, v4

    :cond_7
    return v0
.end method
