.class public final Lf3/c0;
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

    iput-object p1, p0, Lf3/c0;->a:Lm8/a;

    iput-object p2, p0, Lf3/c0;->b:Lm8/a;

    iput-object p3, p0, Lf3/c0;->c:Lm8/a;

    iput-object p4, p0, Lf3/c0;->d:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)Lf3/c0;
    .locals 1

    new-instance v0, Lf3/c0;

    invoke-direct {v0, p0, p1, p2, p3}, Lf3/c0;-><init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V

    return-object v0
.end method

.method public static c(Lh3/a;Lh3/a;Ljava/lang/Object;Ljava/lang/Object;)Lf3/b0;
    .locals 1

    new-instance v0, Lf3/b0;

    check-cast p2, Lf3/d;

    check-cast p3, Lf3/h0;

    invoke-direct {v0, p0, p1, p2, p3}, Lf3/b0;-><init>(Lh3/a;Lh3/a;Lf3/d;Lf3/h0;)V

    return-object v0
.end method


# virtual methods
.method public b()Lf3/b0;
    .locals 3

    iget-object v0, p0, Lf3/c0;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh3/a;

    iget-object v1, p0, Lf3/c0;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/a;

    iget-object v2, p0, Lf3/c0;->c:Lm8/a;

    invoke-interface {v2}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lf3/c0;->d:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lf3/c0;->c(Lh3/a;Lh3/a;Ljava/lang/Object;Ljava/lang/Object;)Lf3/b0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf3/c0;->b()Lf3/b0;

    move-result-object p0

    return-object p0
.end method
