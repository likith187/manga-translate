.class public abstract Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;

.field private static final b:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/b;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v0, "sw"

    const-string v1, "t"

    const-string v2, "fc"

    const-string v3, "sc"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/b;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/k;
    .locals 3

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lq1/b;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v2}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lq1/b;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/k;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x()V

    if-nez v1, :cond_2

    new-instance p0, Lm1/k;

    invoke-direct {p0, v0, v0, v0, v0}, Lm1/k;-><init>(Lm1/a;Lm1/a;Lm1/b;Lm1/b;)V

    return-object p0

    :cond_2
    return-object v1
.end method

.method private static b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/k;
    .locals 6

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    const/4 v0, 0x0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lq1/b;->b:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v4}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lq1/d;->e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/b;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lq1/d;->e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/b;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lq1/d;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/a;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lq1/d;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x()V

    new-instance p0, Lm1/k;

    invoke-direct {p0, v0, v1, v2, v3}, Lm1/k;-><init>(Lm1/a;Lm1/a;Lm1/b;Lm1/b;)V

    return-object p0
.end method
