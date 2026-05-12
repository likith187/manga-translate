.class public final Lz2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field private final a:Lm8/a;

.field private final b:Lm8/a;

.field private final c:Lm8/a;


# direct methods
.method public constructor <init>(Lm8/a;Lm8/a;Lm8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j;->a:Lm8/a;

    iput-object p2, p0, Lz2/j;->b:Lm8/a;

    iput-object p3, p0, Lz2/j;->c:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;)Lz2/j;
    .locals 1

    new-instance v0, Lz2/j;

    invoke-direct {v0, p0, p1, p2}, Lz2/j;-><init>(Lm8/a;Lm8/a;Lm8/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lh3/a;Lh3/a;)Lz2/i;
    .locals 1

    new-instance v0, Lz2/i;

    invoke-direct {v0, p0, p1, p2}, Lz2/i;-><init>(Landroid/content/Context;Lh3/a;Lh3/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lz2/i;
    .locals 2

    iget-object v0, p0, Lz2/j;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lz2/j;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh3/a;

    iget-object p0, p0, Lz2/j;->c:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/a;

    invoke-static {v0, v1, p0}, Lz2/j;->c(Landroid/content/Context;Lh3/a;Lh3/a;)Lz2/i;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lz2/j;->b()Lz2/i;

    move-result-object p0

    return-object p0
.end method
