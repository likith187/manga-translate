.class public abstract Le8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/c;


# instance fields
.field private final a:Le8/f;

.field private final b:Le8/e;

.field private c:Ljava/lang/Object;

.field private d:Lw8/a;

.field private e:Lw8/a;


# direct methods
.method public constructor <init>(Le8/f;Le8/e;)V
    .locals 1

    const-string v0, "param"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "update"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le8/a;->a:Le8/f;

    iput-object p2, p0, Le8/a;->b:Le8/e;

    invoke-virtual {p1}, Le8/f;->a()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Le8/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Lw8/a;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le8/a;->e:Lw8/a;

    return-void
.end method

.method public c(Lw8/a;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le8/a;->d:Lw8/a;

    return-void
.end method

.method public final d()Le8/f;
    .locals 0

    iget-object p0, p0, Le8/a;->a:Le8/f;

    return-object p0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Le8/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public f(Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Le8/a;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Le8/a;->e(Ljava/lang/Object;)V

    iget-object v0, p0, Le8/a;->b:Le8/e;

    iget-object p0, p0, Le8/a;->a:Le8/f;

    invoke-virtual {p0}, Le8/f;->c()Ljava/lang/String;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, p1}, Le8/e;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Le8/a;->c:Ljava/lang/Object;

    return-object p0
.end method
