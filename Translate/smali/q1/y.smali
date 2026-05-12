.class abstract Lq1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "mm"

    const-string v1, "hd"

    const-string v2, "nm"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/y;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method static a(Lcom/airbnb/lottie/parser/moshi/c;)Ln1/j;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lq1/y;->a:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p0, v3}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->D()Z

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->I()I

    move-result v1

    invoke-static {v1}, Ln1/j$a;->forId(I)Ln1/j$a;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance p0, Ln1/j;

    invoke-direct {p0, v0, v1, v2}, Ln1/j;-><init>(Ljava/lang/String;Ln1/j$a;Z)V

    return-object p0
.end method
