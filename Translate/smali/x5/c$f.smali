.class final Lx5/c$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx5/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lx5/c$f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx5/c$f;

    invoke-direct {v0}, Lx5/c$f;-><init>()V

    sput-object v0, Lx5/c$f;->INSTANCE:Lx5/c$f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lx5/c$f;->invoke()Lkotlinx/coroutines/c0;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Lkotlinx/coroutines/c0;
    .locals 2

    .line 2
    new-instance p0, Lkotlinx/coroutines/b0;

    const-string v0, "TaskExecutors"

    invoke-direct {p0, v0}, Lkotlinx/coroutines/b0;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/coroutines/o0;->a()Lkotlinx/coroutines/y;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/x1;->b(Lkotlinx/coroutines/f1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/coroutines/g;->plus(Lkotlin/coroutines/g;)Lkotlin/coroutines/g;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object p0

    return-object p0
.end method
