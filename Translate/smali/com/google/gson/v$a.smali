.class Lcom/google/gson/v$a;
.super Lcom/google/gson/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/v;->a()Lcom/google/gson/v;
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

    iput-object p1, p0, Lcom/google/gson/v$a;->a:Lcom/google/gson/v;

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    return-void
.end method


# virtual methods
.method public b(La5/a;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v0

    sget-object v1, La5/b;->NULL:La5/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/gson/v$a;->a:Lcom/google/gson/v;

    invoke-virtual {p0, p1}, Lcom/google/gson/v;->b(La5/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(La5/c;Ljava/lang/Object;)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p1}, La5/c;->q0()La5/c;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/gson/v$a;->a:Lcom/google/gson/v;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
