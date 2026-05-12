.class Lcom/google/gson/d$a;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/d;->e(Z)Lcom/google/gson/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/d;


# direct methods
.method constructor <init>(Lcom/google/gson/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson/d$a;->a:Lcom/google/gson/d;

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/gson/d$a;->e(La5/a;)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/d$a;->f(La5/c;Ljava/lang/Number;)V

    return-void
.end method

.method public e(La5/a;)Ljava/lang/Double;
    .locals 1

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object p0

    sget-object v0, La5/b;->NULL:La5/b;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, La5/a;->x0()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public f(La5/c;Ljava/lang/Number;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/gson/d;->d(D)V

    invoke-virtual {p1, v0, v1}, La5/c;->K0(D)La5/c;

    return-void
.end method
