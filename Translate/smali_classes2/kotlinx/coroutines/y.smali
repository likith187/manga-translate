.class public abstract Lkotlinx/coroutines/y;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/y$a;
    }
.end annotation


# static fields
.field public static final b:Lkotlinx/coroutines/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/y$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/y$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/y;->b:Lkotlinx/coroutines/y$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/coroutines/e;->d:Lkotlin/coroutines/e$b;

    invoke-direct {p0, v0}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/g$c;)V

    return-void
.end method


# virtual methods
.method public D0(Lkotlin/coroutines/g;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public E0(I)Lkotlinx/coroutines/y;
    .locals 1

    invoke-static {p1}, Lkotlinx/coroutines/internal/o;->a(I)V

    new-instance v0, Lkotlinx/coroutines/internal/n;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/n;-><init>(Lkotlinx/coroutines/y;I)V

    return-object v0
.end method

.method public get(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/e$a;->a(Lkotlin/coroutines/e;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g$b;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lkotlin/coroutines/d;)V
    .locals 0

    const-string p0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lkotlinx/coroutines/internal/j;

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/j;->s()V

    return-void
.end method

.method public minusKey(Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/coroutines/e$a;->b(Lkotlin/coroutines/e;Lkotlin/coroutines/g$c;)Lkotlin/coroutines/g;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/g0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/g0;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .locals 1

    new-instance v0, Lkotlinx/coroutines/internal/j;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/j;-><init>(Lkotlinx/coroutines/y;Lkotlin/coroutines/d;)V

    return-object v0
.end method

.method public abstract x0(Lkotlin/coroutines/g;Ljava/lang/Runnable;)V
.end method
