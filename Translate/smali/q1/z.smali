.class abstract Lq1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lj1/i;
    .locals 7

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->b0()Lcom/airbnb/lottie/parser/moshi/c$b;

    move-result-object v0

    sget-object v1, Lcom/airbnb/lottie/parser/moshi/c$b;->BEGIN_OBJECT:Lcom/airbnb/lottie/parser/moshi/c$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lr1/j;->e()F

    move-result v3

    sget-object v4, Lq1/a0;->INSTANCE:Lq1/a0;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lq1/t;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;FLq1/n0;ZZ)Ls1/a;

    move-result-object p0

    new-instance v0, Lj1/i;

    invoke-direct {v0, p1, p0}, Lj1/i;-><init>(Lcom/airbnb/lottie/j;Ls1/a;)V

    return-object v0
.end method
