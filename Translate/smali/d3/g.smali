.class public final Ld3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/b;


# instance fields
.field private final a:Lm8/a;


# direct methods
.method public constructor <init>(Lm8/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/g;->a:Lm8/a;

    return-void
.end method

.method public static a(Lh3/a;)Le3/d;
    .locals 1

    invoke-static {p0}, Ld3/f;->a(Lh3/a;)Le3/d;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, La3/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/d;

    return-object p0
.end method

.method public static b(Lm8/a;)Ld3/g;
    .locals 1

    new-instance v0, Ld3/g;

    invoke-direct {v0, p0}, Ld3/g;-><init>(Lm8/a;)V

    return-object v0
.end method


# virtual methods
.method public c()Le3/d;
    .locals 0

    iget-object p0, p0, Ld3/g;->a:Lm8/a;

    invoke-interface {p0}, Lm8/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh3/a;

    invoke-static {p0}, Ld3/g;->a(Lh3/a;)Le3/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ld3/g;->c()Le3/d;

    move-result-object p0

    return-object p0
.end method
