.class public abstract Lcom/google/gson/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/v;
    .locals 1

    new-instance v0, Lcom/google/gson/v$a;

    invoke-direct {v0, p0}, Lcom/google/gson/v$a;-><init>(Lcom/google/gson/v;)V

    return-object v0
.end method

.method public abstract b(La5/a;)Ljava/lang/Object;
.end method

.method public final c(Ljava/lang/Object;)Lcom/google/gson/i;
    .locals 1

    :try_start_0
    new-instance v0, Lw4/g;

    invoke-direct {v0}, Lw4/g;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/google/gson/v;->d(La5/c;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lw4/g;->R0()Lcom/google/gson/i;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/gson/j;

    invoke-direct {p1, p0}, Lcom/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract d(La5/c;Ljava/lang/Object;)V
.end method
