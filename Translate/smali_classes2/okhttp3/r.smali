.class public final Lokhttp3/r;
.super Lokhttp3/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/r$a;,
        Lokhttp3/r$b;
    }
.end annotation


# static fields
.field public static final d:Lokhttp3/r$b;

.field private static final e:Lokhttp3/w;


# instance fields
.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/r$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/r$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lokhttp3/r;->d:Lokhttp3/r$b;

    sget-object v0, Lokhttp3/w;->e:Lokhttp3/w$a;

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lokhttp3/w$a;->a(Ljava/lang/String;)Lokhttp3/w;

    move-result-object v0

    sput-object v0, Lokhttp3/r;->e:Lokhttp3/w;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    const-string v0, "encodedNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encodedValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/a0;-><init>()V

    invoke-static {p1}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/r;->b:Ljava/util/List;

    invoke-static {p2}, Li9/d;->Q(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/r;->c:Ljava/util/List;

    return-void
.end method

.method private final f(Lt9/e;Z)J
    .locals 3

    if-eqz p2, :cond_0

    new-instance p1, Lt9/d;

    invoke-direct {p1}, Lt9/d;-><init>()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-interface {p1}, Lt9/e;->d()Lt9/d;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lokhttp3/r;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x26

    invoke-virtual {p1, v2}, Lt9/d;->O0(I)Lt9/d;

    :cond_1
    iget-object v2, p0, Lokhttp3/r;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lt9/d;->T0(Ljava/lang/String;)Lt9/d;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Lt9/d;->O0(I)Lt9/d;

    iget-object v2, p0, Lokhttp3/r;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lt9/d;->T0(Ljava/lang/String;)Lt9/d;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lt9/d;->G0()J

    move-result-wide v0

    invoke-virtual {p1}, Lt9/d;->i()V

    goto :goto_2

    :cond_3
    const-wide/16 v0, 0x0

    :goto_2
    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/r;->f(Lt9/e;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lokhttp3/w;
    .locals 0

    sget-object p0, Lokhttp3/r;->e:Lokhttp3/w;

    return-object p0
.end method

.method public e(Lt9/e;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/r;->f(Lt9/e;Z)J

    return-void
.end method
