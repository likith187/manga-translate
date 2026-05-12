.class public final Lf3/i0;
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

    iput-object p1, p0, Lf3/i0;->a:Lm8/a;

    iput-object p2, p0, Lf3/i0;->b:Lm8/a;

    iput-object p3, p0, Lf3/i0;->c:Lm8/a;

    return-void
.end method

.method public static a(Lm8/a;Lm8/a;Lm8/a;)Lf3/i0;
    .locals 1

    new-instance v0, Lf3/i0;

    invoke-direct {v0, p0, p1, p2}, Lf3/i0;-><init>(Lm8/a;Lm8/a;Lm8/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;I)Lf3/h0;
    .locals 1

    new-instance v0, Lf3/h0;

    invoke-direct {v0, p0, p1, p2}, Lf3/h0;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public b()Lf3/h0;
    .locals 2

    iget-object v0, p0, Lf3/i0;->a:Lm8/a;

    invoke-interface {v0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lf3/i0;->b:Lm8/a;

    invoke-interface {v1}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object p0, p0, Lf3/i0;->c:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, v1, p0}, Lf3/i0;->c(Landroid/content/Context;Ljava/lang/String;I)Lf3/h0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf3/i0;->b()Lf3/h0;

    move-result-object p0

    return-object p0
.end method
