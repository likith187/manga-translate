.class Lcom/google/gson/d$d;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/d;->b(Lcom/google/gson/v;)Lcom/google/gson/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/v;


# direct methods
.method constructor <init>(Lcom/google/gson/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/d$d;->a:Lcom/google/gson/v;

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/d$d;->e(La5/a;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d$d;->f(La5/c;Ljava/util/concurrent/atomic/AtomicLong;)V

    return-void
.end method

.method public e(La5/a;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 2

    iget-object p0, p0, Lcom/google/gson/d$d;->a:Lcom/google/gson/v;

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    return-object p1
.end method

.method public f(La5/c;Ljava/util/concurrent/atomic/AtomicLong;)V
    .locals 2

    iget-object p0, p0, Lcom/google/gson/d$d;->a:Lcom/google/gson/v;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    return-void
.end method
