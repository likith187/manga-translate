.class public final Lokhttp3/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/c0;
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
    invoke-direct {p0}, Lokhttp3/c0$a;-><init>()V

    return-void
.end method

.method public static synthetic c(Lokhttp3/c0$a;[BLokhttp3/w;ILjava/lang/Object;)Lokhttp3/c0;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lokhttp3/c0$a;->b([BLokhttp3/w;)Lokhttp3/c0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lt9/f;Lokhttp3/w;J)Lokhttp3/c0;
    .locals 0

    const-string p0, "<this>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/c0$a$a;

    invoke-direct {p0, p2, p3, p4, p1}, Lokhttp3/c0$a$a;-><init>(Lokhttp3/w;JLt9/f;)V

    return-object p0
.end method

.method public final b([BLokhttp3/w;)Lokhttp3/c0;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt9/d;

    invoke-direct {v0}, Lt9/d;-><init>()V

    invoke-virtual {v0, p1}, Lt9/d;->L0([B)Lt9/d;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Lokhttp3/c0$a;->a(Lt9/f;Lokhttp3/w;J)Lokhttp3/c0;

    move-result-object p0

    return-object p0
.end method
