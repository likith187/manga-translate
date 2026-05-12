.class public Lq1/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/n0;


# static fields
.field public static final INSTANCE:Lq1/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/g0;

    invoke-direct {v0}, Lq1/g0;-><init>()V

    sput-object v0, Lq1/g0;->INSTANCE:Lq1/g0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lq1/g0;->b(Lcom/airbnb/lottie/parser/moshi/c;F)Ls1/d;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/c;F)Ls1/d;
    .locals 3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->b0()Lcom/airbnb/lottie/parser/moshi/c$b;

    move-result-object p0

    sget-object v0, Lcom/airbnb/lottie/parser/moshi/c$b;->BEGIN_ARRAY:Lcom/airbnb/lottie/parser/moshi/c$b;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->i()V

    :cond_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->G()D

    move-result-wide v1

    double-to-float v1, v1

    :goto_1
    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->B()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->D0()V

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/airbnb/lottie/parser/moshi/c;->v()V

    :cond_3
    new-instance p0, Ls1/d;

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    mul-float/2addr v0, p2

    div-float/2addr v1, p1

    mul-float/2addr v1, p2

    invoke-direct {p0, v0, v1}, Ls1/d;-><init>(FF)V

    return-object p0
.end method
