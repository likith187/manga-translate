.class Lw4/o$n;
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

    invoke-virtual {p0, p1}, Lw4/o$n;->e(La5/a;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, Lw4/o$n;->f(La5/c;Ljava/net/URI;)V

    return-void
.end method

.method public e(La5/a;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object p0

    sget-object v0, La5/b;->NULL:La5/b;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, La5/a;->J0()Ljava/lang/String;

    move-result-object p0

    const-string p1, "null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public f(La5/c;Ljava/net/URI;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {p1, p0}, La5/c;->O0(Ljava/lang/String;)La5/c;

    return-void
.end method
