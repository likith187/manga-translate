.class public final Le3/k;
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

.field private final f:Lm8/a;

.field private final g:Lm8/a;


# direct methods
.method public constructor <init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/k;->a:Lm8/a;

    iput-object p2, p0, Le3/k;->b:Lm8/a;

    iput-object p3, p0, Le3/k;->c:Lm8/a;

    iput-object p4, p0, Le3/k;->d:Lm8/a;

    iput-object p5, p0, Le3/k;->e:Lm8/a;

    iput-object p6, p0, Le3/k;->f:Lm8/a;

    iput-object p7, p0, Le3/k;->g:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)Le3/k;
    .locals 9

    new-instance v8, Le3/k;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Le3/k;-><init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V

    return-object v8
.end method

.method public static c(Landroid/content/Context;Lz2/e;Lf3/c;Le3/p;Ljava/util/concurrent/Executor;Lg3/b;Lh3/a;)Le3/j;
    .locals 9

    new-instance v8, Le3/j;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Le3/j;-><init>(Landroid/content/Context;Lz2/e;Lf3/c;Le3/p;Ljava/util/concurrent/Executor;Lg3/b;Lh3/a;)V

    return-object v8
.end method


# virtual methods
.method public b()Le3/j;
    .locals 8

    iget-object v0, p0, Le3/k;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Le3/k;->b:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lz2/e;

    iget-object v0, p0, Le3/k;->c:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lf3/c;

    iget-object v0, p0, Le3/k;->d:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le3/p;

    iget-object v0, p0, Le3/k;->e:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Le3/k;->f:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lg3/b;

    iget-object p0, p0, Le3/k;->g:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lh3/a;

    invoke-static/range {v1 .. v7}, Le3/k;->c(Landroid/content/Context;Lz2/e;Lf3/c;Le3/p;Ljava/util/concurrent/Executor;Lg3/b;Lh3/a;)Le3/j;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le3/k;->b()Le3/j;

    move-result-object p0

    return-object p0
.end method
