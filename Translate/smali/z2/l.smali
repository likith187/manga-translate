.class public final Lz2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field private final a:Lm8/a;

.field private final b:Lm8/a;


# direct methods
.method public constructor <init>(Lm8/a;Lm8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/l;->a:Lm8/a;

    iput-object p2, p0, Lz2/l;->b:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;)Lz2/l;
    .locals 1

    new-instance v0, Lz2/l;

    invoke-direct {v0, p0, p1}, Lz2/l;-><init>(Lm8/a;Lm8/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lz2/k;
    .locals 1

    new-instance v0, Lz2/k;

    check-cast p1, Lz2/i;

    invoke-direct {v0, p0, p1}, Lz2/k;-><init>(Landroid/content/Context;Lz2/i;)V

    return-object v0
.end method


# virtual methods
.method public b()Lz2/k;
    .locals 1

    iget-object v0, p0, Lz2/l;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lz2/l;->b:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Lz2/l;->c(Landroid/content/Context;Ljava/lang/Object;)Lz2/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lz2/l;->b()Lz2/k;

    move-result-object p0

    return-object p0
.end method
