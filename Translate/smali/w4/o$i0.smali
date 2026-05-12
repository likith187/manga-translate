.class Lw4/o$i0;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw4/o$i0;->e(La5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Lw4/o$i0;->f(La5/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public e(La5/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, La5/a;->v0()Z

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object p0
.end method

.method public f(La5/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    invoke-virtual {p1, p0}, La5/c;->P0(Z)La5/c;

    return-void
.end method
