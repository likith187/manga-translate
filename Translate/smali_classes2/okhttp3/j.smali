.class public final Lokhttp3/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lokhttp3/internal/connection/g;


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x5

    .line 6
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x5

    invoke-direct {p0, v3, v0, v1, v2}, Lokhttp3/j;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(IJLjava/util/concurrent/TimeUnit;)V
    .locals 7

    const-string v0, "timeUnit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lokhttp3/internal/connection/g;

    .line 4
    sget-object v2, Ll9/e;->INSTANCE:Ll9/e;

    move-object v1, v0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    .line 5
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/g;-><init>(Ll9/e;IJLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0}, Lokhttp3/j;-><init>(Lokhttp3/internal/connection/g;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/g;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/j;->a:Lokhttp3/internal/connection/g;

    return-void
.end method


# virtual methods
.method public final a()Lokhttp3/internal/connection/g;
    .locals 0

    iget-object p0, p0, Lokhttp3/j;->a:Lokhttp3/internal/connection/g;

    return-object p0
.end method
