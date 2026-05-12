.class public abstract Lq1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, p3, v0}, Lq1/u;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;FLq1/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Lq1/u;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;FLq1/n0;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/a;
    .locals 2

    new-instance v0, Lm1/a;

    sget-object v1, Lq1/g;->INSTANCE:Lq1/g;

    invoke-static {p0, p1, v1}, Lq1/d;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static d(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/j;
    .locals 3

    new-instance v0, Lm1/j;

    invoke-static {}, Lr1/j;->e()F

    move-result v1

    sget-object v2, Lq1/i;->INSTANCE:Lq1/i;

    invoke-static {p0, v1, p1, v2}, Lq1/d;->a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/j;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/b;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lq1/d;->f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Z)Lm1/b;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Z)Lm1/b;
    .locals 2

    new-instance v0, Lm1/b;

    if-eqz p2, :cond_0

    invoke-static {}, Lr1/j;->e()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lq1/l;->INSTANCE:Lq1/l;

    invoke-static {p0, p2, p1, v1}, Lq1/d;->a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/b;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static g(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;I)Lm1/c;
    .locals 2

    new-instance v0, Lm1/c;

    new-instance v1, Lq1/o;

    invoke-direct {v1, p2}, Lq1/o;-><init>(I)V

    invoke-static {p0, p1, v1}, Lq1/d;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/c;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static h(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/d;
    .locals 2

    new-instance v0, Lm1/d;

    sget-object v1, Lq1/r;->INSTANCE:Lq1/r;

    invoke-static {p0, p1, v1}, Lq1/d;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static i(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/f;
    .locals 4

    new-instance v0, Lm1/f;

    invoke-static {}, Lr1/j;->e()F

    move-result v1

    sget-object v2, Lq1/b0;->INSTANCE:Lq1/b0;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lq1/u;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;FLq1/n0;Z)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/f;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static j(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/g;
    .locals 2

    new-instance v0, Lm1/g;

    sget-object v1, Lq1/g0;->INSTANCE:Lq1/g0;

    invoke-static {p0, p1, v1}, Lq1/d;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/g;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static k(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/h;
    .locals 3

    new-instance v0, Lm1/h;

    invoke-static {}, Lr1/j;->e()F

    move-result v1

    sget-object v2, Lq1/h0;->INSTANCE:Lq1/h0;

    invoke-static {p0, v1, p1, v2}, Lq1/d;->a(Lcom/airbnb/lottie/parser/moshi/c;FLcom/airbnb/lottie/j;Lq1/n0;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lm1/h;-><init>(Ljava/util/List;)V

    return-object v0
.end method
