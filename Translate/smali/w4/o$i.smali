.class Lw4/o$i;
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

    invoke-virtual {p0, p1}, Lw4/o$i;->e(La5/a;)Lcom/google/gson/internal/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/google/gson/internal/g;

    invoke-virtual {p0, p1, p2}, Lw4/o$i;->f(La5/c;Lcom/google/gson/internal/g;)V

    return-void
.end method

.method public e(La5/a;)Lcom/google/gson/internal/g;
    .locals 1

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object p0

    sget-object v0, La5/b;->NULL:La5/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/internal/g;

    invoke-virtual {p1}, La5/a;->J0()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/internal/g;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public f(La5/c;Lcom/google/gson/internal/g;)V
    .locals 0

    invoke-virtual {p1, p2}, La5/c;->N0(Ljava/lang/Number;)La5/c;

    return-void
.end method
