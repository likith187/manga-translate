.class public abstract Landroidx/lifecycle/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lm0/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm0/g;

    invoke-direct {v0}, Lm0/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/s0;->a:Lm0/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/AutoCloseable;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/s0;->a:Lm0/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lm0/g;->d(Ljava/lang/String;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/s0;->a:Lm0/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm0/g;->e()V

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/s0;->d()V

    return-void
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/AutoCloseable;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/s0;->a:Lm0/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lm0/g;->g(Ljava/lang/String;)Ljava/lang/AutoCloseable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected d()V
    .locals 0

    return-void
.end method
