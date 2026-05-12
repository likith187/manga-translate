.class abstract Lq1/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "tr"

    const-string v1, "hd"

    const-string v2, "nm"

    const-string v3, "c"

    const-string v4, "o"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/e0;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Ln1/m;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move v7, v1

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lq1/e0;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D()Z

    move-result v7

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lq1/c;->g(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/l;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, v1}, Lq1/d;->f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Z)Lm1/b;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-static {p0, p1, v1}, Lq1/d;->f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Z)Lm1/b;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    new-instance p0, Ln1/m;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ln1/m;-><init>(Ljava/lang/String;Lm1/b;Lm1/b;Lm1/l;Z)V

    return-object p0
.end method
