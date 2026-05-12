.class public abstract Ln8/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {}, Lkotlin/coroutines/intrinsics/b;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Ln8/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ln8/b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static final b(Ln8/a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln8/d;

    invoke-virtual {p0}, Ln8/a;->a()Lw8/q;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ln8/d;-><init>(Lw8/q;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ln8/d;->c()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
