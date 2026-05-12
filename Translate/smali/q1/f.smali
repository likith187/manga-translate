.class abstract Lq1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "hd"

    const-string v1, "d"

    const-string v2, "nm"

    const-string v3, "p"

    const-string v4, "s"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/f;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;I)Ln1/b;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move v9, v0

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Lq1/f;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, p2}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v1, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->I()I

    move-result p2

    if-ne p2, v2, :cond_2

    move v8, v1

    goto :goto_1

    :cond_2
    move v8, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D()Z

    move-result v9

    goto :goto_1

    :cond_4
    invoke-static {p0, p1}, Lq1/d;->i(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/f;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-static {p0, p1}, Lq1/a;->b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/m;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    new-instance p0, Ln1/b;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Ln1/b;-><init>(Ljava/lang/String;Lm1/m;Lm1/f;ZZ)V

    return-object p0
.end method
