.class public abstract Lk6/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/oplus/anim/parser/moshi/c;FLcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lk6/v;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;FLk6/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lk6/v;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;FLk6/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/a;
    .locals 2

    new-instance v0, Lg6/a;

    sget-object v1, Lk6/g;->INSTANCE:Lk6/g;

    invoke-static {p0, p1, v1}, Lk6/d;->b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/j;
    .locals 3

    new-instance v0, Lg6/j;

    invoke-static {}, Ll6/h;->e()F

    move-result v1

    sget-object v2, Lk6/i;->INSTANCE:Lk6/i;

    invoke-static {p0, v1, p1, v2}, Lk6/d;->a(Lcom/oplus/anim/parser/moshi/c;FLcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lk6/d;->f(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Z)Lg6/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Z)Lg6/b;
    .locals 2

    new-instance v0, Lg6/b;

    if-eqz p2, :cond_0

    invoke-static {}, Ll6/h;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lk6/m;->INSTANCE:Lk6/m;

    invoke-static {p0, p2, p1, v1}, Lk6/d;->a(Lcom/oplus/anim/parser/moshi/c;FLcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;I)Lg6/c;
    .locals 2

    new-instance v0, Lg6/c;

    new-instance v1, Lk6/p;

    invoke-direct {v1, p2}, Lk6/p;-><init>(I)V

    invoke-static {p0, p1, v1}, Lk6/d;->b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/d;
    .locals 2

    new-instance v0, Lg6/d;

    sget-object v1, Lk6/s;->INSTANCE:Lk6/s;

    invoke-static {p0, p1, v1}, Lk6/d;->b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/f;
    .locals 4

    new-instance v0, Lg6/f;

    invoke-static {}, Ll6/h;->e()F

    move-result v1

    sget-object v2, Lk6/b0;->INSTANCE:Lk6/b0;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lk6/v;->a(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;FLk6/n0;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/g;
    .locals 2

    new-instance v0, Lg6/g;

    sget-object v1, Lk6/g0;->INSTANCE:Lk6/g0;

    invoke-static {p0, p1, v1}, Lk6/d;->b(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static k(Lcom/oplus/anim/parser/moshi/c;Lcom/oplus/anim/a;)Lg6/h;
    .locals 3

    new-instance v0, Lg6/h;

    invoke-static {}, Ll6/h;->e()F

    move-result v1

    sget-object v2, Lk6/h0;->INSTANCE:Lk6/h0;

    invoke-static {p0, v1, p1, v2}, Lk6/d;->a(Lcom/oplus/anim/parser/moshi/c;FLcom/oplus/anim/a;Lk6/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lg6/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
