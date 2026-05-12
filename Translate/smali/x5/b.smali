.class public final Lx5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln8/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lx5/b$a;->INSTANCE:Lx5/b$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lx5/b;->a:Ln8/j;

    return-void
.end method


# virtual methods
.method public final a()Ly5/b;
    .locals 0

    iget-object p0, p0, Lx5/b;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly5/b;

    return-object p0
.end method

.method public final b()Lx5/a;
    .locals 0

    invoke-virtual {p0}, Lx5/b;->a()Ly5/b;

    move-result-object p0

    return-object p0
.end method

.method public final c(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lx5/b;->a()Ly5/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ly5/b;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lx5/b;->a()Ly5/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Ly5/b;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Lx5/b;->a()Ly5/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Ly5/b;->b(Ljava/lang/Object;)V

    return-void
.end method
