.class public final Ld3/i;
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

    iput-object p1, p0, Ld3/i;->a:Lm8/a;

    iput-object p2, p0, Ld3/i;->b:Lm8/a;

    iput-object p3, p0, Ld3/i;->c:Lm8/a;

    iput-object p4, p0, Ld3/i;->d:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)Ld3/i;
    .locals 1

    new-instance v0, Ld3/i;

    invoke-direct {v0, p0, p1, p2, p3}, Ld3/i;-><init>(Lm8/a;Lm8/a;Lm8/a;Lm8/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Lf3/c;Le3/d;Lh3/a;)Le3/p;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ld3/h;->a(Landroid/content/Context;Lf3/c;Le3/d;Lh3/a;)Le3/p;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, La3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/p;

    return-object p0
.end method


# virtual methods
.method public b()Le3/p;
    .locals 3

    iget-object v0, p0, Ld3/i;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Ld3/i;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf3/c;

    iget-object v2, p0, Ld3/i;->c:Lm8/a;

    invoke-interface {v2}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le3/d;

    iget-object p0, p0, Ld3/i;->d:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/a;

    invoke-static {v0, v1, v2, p0}, Ld3/i;->c(Landroid/content/Context;Lf3/c;Le3/d;Lh3/a;)Le3/p;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld3/i;->b()Le3/p;

    move-result-object p0

    return-object p0
.end method
