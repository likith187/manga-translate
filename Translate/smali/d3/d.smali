.class public final Ld3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field private final a:Lm8/a;

.field private final b:Lm8/a;

.field private final c:Lm8/a;

.field private final d:Lm8/a;

.field private final e:Lm8/a;


# direct methods
.method public constructor <init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/d;->a:Lm8/a;

    iput-object p2, p0, Ld3/d;->b:Lm8/a;

    iput-object p3, p0, Ld3/d;->c:Lm8/a;

    iput-object p4, p0, Ld3/d;->d:Lm8/a;

    iput-object p5, p0, Ld3/d;->e:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)Ld3/d;
    .locals 7

    new-instance v6, Ld3/d;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ld3/d;-><init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V

    return-object v6
.end method

.method public static c(Ljava/util/concurrent/Executor;Lz2/e;Le3/p;Lf3/c;Lg3/b;)Ld3/c;
    .locals 7

    new-instance v6, Ld3/c;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ld3/c;-><init>(Ljava/util/concurrent/Executor;Lz2/e;Le3/p;Lf3/c;Lg3/b;)V

    return-object v6
.end method


# virtual methods
.method public b()Ld3/c;
    .locals 4

    iget-object v0, p0, Ld3/d;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Ld3/d;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz2/e;

    iget-object v2, p0, Ld3/d;->c:Lm8/a;

    invoke-interface {v2}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/p;

    iget-object v3, p0, Ld3/d;->d:Lm8/a;

    invoke-interface {v3}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf3/c;

    iget-object p0, p0, Ld3/d;->e:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg3/b;

    invoke-static {v0, v1, v2, v3, p0}, Ld3/d;->c(Ljava/util/concurrent/Executor;Lz2/e;Le3/p;Lf3/c;Lg3/b;)Ld3/c;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld3/d;->b()Ld3/c;

    move-result-object p0

    return-object p0
.end method
