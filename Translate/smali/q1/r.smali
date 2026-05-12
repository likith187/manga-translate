.class public Lq1/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/n0;


# static fields
.field public static final INSTANCE:Lq1/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/r;

    invoke-direct {v0}, Lq1/r;-><init>()V

    sput-object v0, Lq1/r;->INSTANCE:Lq1/r;

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

    invoke-virtual {p0, p1, p2}, Lq1/r;->b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lq1/s;->g(Lcom/airbnb/lottie/parser/moshi/c;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
