.class public Lq1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/n0;


# static fields
.field public static final INSTANCE:Lq1/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq1/l;

    invoke-direct {v0}, Lq1/l;-><init>()V

    sput-object v0, Lq1/l;->INSTANCE:Lq1/l;

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

    invoke-virtual {p0, p1, p2}, Lq1/l;->b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/airbnb/lottie/parser/moshi/c;F)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lq1/s;->g(Lcom/airbnb/lottie/parser/moshi/c;)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
