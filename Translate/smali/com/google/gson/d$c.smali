.class Lcom/google/gson/d$c;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/d;->r(Lcom/google/gson/r;)Lcom/google/gson/v;
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

    invoke-virtual {p0, p1}, Lcom/google/gson/d$c;->e(La5/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d$c;->f(La5/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(La5/a;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object p0

    sget-object v0, La5/b;->NULL:La5/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, La5/a;->E0()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public f(La5/c;Ljava/lang/Number;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, La5/c;->O0(Ljava/lang/String;)La5/c;

    return-void
.end method
