.class public final Ly2/t;
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

    iput-object p1, p0, Ly2/t;->a:Lm8/a;

    iput-object p2, p0, Ly2/t;->b:Lm8/a;

    iput-object p3, p0, Ly2/t;->c:Lm8/a;

    iput-object p4, p0, Ly2/t;->d:Lm8/a;

    iput-object p5, p0, Ly2/t;->e:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)Ly2/t;
    .locals 7

    new-instance v6, Ly2/t;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ly2/t;-><init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V

    return-object v6
.end method

.method public static c(Lh3/a;Lh3/a;Ld3/e;Le3/j;Le3/n;)Ly2/r;
    .locals 7

    new-instance v6, Ly2/r;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ly2/r;-><init>(Lh3/a;Lh3/a;Ld3/e;Le3/j;Le3/n;)V

    return-object v6
.end method


# virtual methods
.method public b()Ly2/r;
    .locals 4

    iget-object v0, p0, Ly2/t;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/a;

    iget-object v1, p0, Ly2/t;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/a;

    iget-object v2, p0, Ly2/t;->c:Lm8/a;

    invoke-interface {v2}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld3/e;

    iget-object v3, p0, Ly2/t;->d:Lm8/a;

    invoke-interface {v3}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le3/j;

    iget-object p0, p0, Ly2/t;->e:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/n;

    invoke-static {v0, v1, v2, v3, p0}, Ly2/t;->c(Lh3/a;Lh3/a;Ld3/e;Le3/j;Le3/n;)Ly2/r;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ly2/t;->b()Ly2/r;

    move-result-object p0

    return-object p0
.end method
