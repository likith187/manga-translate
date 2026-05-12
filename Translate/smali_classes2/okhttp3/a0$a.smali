.class public final Lokhttp3/a0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lokhttp3/a0$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lokhttp3/a0$a;[BLokhttp3/w;IIILjava/lang/Object;)Lokhttp3/a0;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    array-length p4, p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lokhttp3/a0$a;->a([BLokhttp3/w;II)Lokhttp3/a0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a([BLokhttp3/w;II)Lokhttp3/a0;
    .locals 6

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p0, p1

    int-to-long v0, p0

    int-to-long v2, p3

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Li9/d;->k(JJJ)V

    new-instance p0, Lokhttp3/a0$a$a;

    invoke-direct {p0, p2, p4, p1, p3}, Lokhttp3/a0$a$a;-><init>(Lokhttp3/w;I[BI)V

    return-object p0
.end method
