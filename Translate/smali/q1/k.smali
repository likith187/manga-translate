.class public Lq1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final f:Lcom/airbnb/lottie/parser/moshi/c$a;

.field private static final g:Lcom/airbnb/lottie/parser/moshi/c$a;


# instance fields
.field private a:Lm1/a;

.field private b:Lm1/b;

.field private c:Lm1/b;

.field private d:Lm1/b;

.field private e:Lm1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/k;->f:Lcom/airbnb/lottie/parser/moshi/c$a;

    const-string v0, "nm"

    const-string v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/c$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/c$a;

    move-result-object v0

    sput-object v0, Lq1/k;->g:Lcom/airbnb/lottie/parser/moshi/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->k()V

    const-string v2, ""

    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lq1/k;->g:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p1, v3}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v3

    if-eqz v3, :cond_6

    if-eq v3, v1, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "Softness"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_1
    const-string v4, "Shadow Color"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "Direction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "Opacity"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    goto :goto_1

    :sswitch_4
    const-string v4, "Distance"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    packed-switch v3, :pswitch_data_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lq1/d;->e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/b;

    move-result-object v3

    iput-object v3, p0, Lq1/k;->e:Lm1/b;

    goto :goto_0

    :pswitch_1
    invoke-static {p1, p2}, Lq1/d;->c(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/a;

    move-result-object v3

    iput-object v3, p0, Lq1/k;->a:Lm1/a;

    goto :goto_0

    :pswitch_2
    invoke-static {p1, p2, v0}, Lq1/d;->f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Z)Lm1/b;

    move-result-object v3

    iput-object v3, p0, Lq1/k;->c:Lm1/b;

    goto :goto_0

    :pswitch_3
    invoke-static {p1, p2, v0}, Lq1/d;->f(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;Z)Lm1/b;

    move-result-object v3

    iput-object v3, p0, Lq1/k;->b:Lm1/b;

    goto :goto_0

    :pswitch_4
    invoke-static {p1, p2}, Lq1/d;->e(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lm1/b;

    move-result-object v3

    iput-object v3, p0, Lq1/k;->d:Lm1/b;

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->X()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->x()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method b(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)Lq1/j;
    .locals 7

    :goto_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lq1/k;->f:Lcom/airbnb/lottie/parser/moshi/c$a;

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/parser/moshi/c;->v0(Lcom/airbnb/lottie/parser/moshi/c$a;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->x0()V

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lq1/k;->a(Lcom/airbnb/lottie/parser/moshi/c;Lcom/airbnb/lottie/j;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lq1/k;->a:Lm1/a;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lq1/k;->b:Lm1/b;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lq1/k;->c:Lm1/b;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lq1/k;->d:Lm1/b;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lq1/k;->e:Lm1/b;

    if-eqz v6, :cond_3

    new-instance p0, Lq1/j;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lq1/j;-><init>(Lm1/a;Lm1/b;Lm1/b;Lm1/b;Lm1/b;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
