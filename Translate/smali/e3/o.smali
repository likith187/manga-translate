.class public final Le3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field private final a:Lm8/a;

.field private final b:Lm8/a;

.field private final c:Lm8/a;

.field private final d:Lm8/a;


# direct methods
.method public constructor <init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/o;->a:Lm8/a;

    iput-object p2, p0, Le3/o;->b:Lm8/a;

    iput-object p3, p0, Le3/o;->c:Lm8/a;

    iput-object p4, p0, Le3/o;->d:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)Le3/o;
    .locals 1

    new-instance v0, Le3/o;

    invoke-direct {v0, p0, p1, p2, p3}, Le3/o;-><init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V

    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lf3/c;Le3/p;Lg3/b;)Le3/n;
    .locals 1

    new-instance v0, Le3/n;

    invoke-direct {v0, p0, p1, p2, p3}, Le3/n;-><init>(Ljava/util/concurrent/Executor;Lf3/c;Le3/p;Lg3/b;)V

    return-object v0
.end method


# virtual methods
.method public b()Le3/n;
    .locals 3

    iget-object v0, p0, Le3/o;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Le3/o;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/c;

    iget-object v2, p0, Le3/o;->c:Lm8/a;

    invoke-interface {v2}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/p;

    iget-object p0, p0, Le3/o;->d:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg3/b;

    invoke-static {v0, v1, v2, p0}, Le3/o;->c(Ljava/util/concurrent/Executor;Lf3/c;Le3/p;Lg3/b;)Le3/n;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le3/o;->b()Le3/n;

    move-result-object p0

    return-object p0
.end method
