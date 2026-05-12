.class Lz4/c;
.super Lcom/google/gson/v;
.source "SourceFile"


# static fields
.field static final b:Lcom/google/gson/w;


# instance fields
.field private final a:Lcom/google/gson/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz4/c$a;

    invoke-direct {v0}, Lz4/c$a;-><init>()V

    sput-object v0, Lz4/c;->b:Lcom/google/gson/w;

    return-void
.end method

.method private constructor <init>(Lcom/google/gson/v;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    .line 3
    iput-object p1, p0, Lz4/c;->a:Lcom/google/gson/v;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/gson/v;Lz4/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz4/c;-><init>(Lcom/google/gson/v;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lz4/c;->e(La5/a;)Ljava/sql/Timestamp;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1, p2}, Lz4/c;->f(La5/c;Ljava/sql/Timestamp;)V

    return-void
.end method

.method public e(La5/a;)Ljava/sql/Timestamp;
    .locals 2

    iget-object p0, p0, Lz4/c;->a:Lcom/google/gson/v;

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    if-eqz p0, :cond_0

    new-instance p1, Ljava/sql/Timestamp;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f(La5/c;Ljava/sql/Timestamp;)V
    .locals 0

    iget-object p0, p0, Lz4/c;->a:Lcom/google/gson/v;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    return-void
.end method
