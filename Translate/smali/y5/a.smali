.class public final Ly5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Ly5/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ly5/a;

    invoke-direct {v0}, Ly5/a;-><init>()V

    sput-object v0, Ly5/a;->INSTANCE:Ly5/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/c0;Ljava/util/function/Supplier;)Lx5/a;
    .locals 7

    const-string p0, "coroutine"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "supplier"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lx5/b;

    invoke-direct {p0}, Lx5/b;-><init>()V

    sget-object v0, Lkotlinx/coroutines/z;->e:Lkotlinx/coroutines/z$a;

    new-instance v2, Ly5/a$a;

    invoke-direct {v2, v0, p0}, Ly5/a$a;-><init>(Lkotlinx/coroutines/z$a;Lx5/b;)V

    new-instance v4, Ly5/a$b;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p0, v0}, Ly5/a$b;-><init>(Ljava/util/function/Supplier;Lx5/b;Lkotlin/coroutines/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    invoke-virtual {p0}, Lx5/b;->b()Lx5/a;

    move-result-object p0

    return-object p0
.end method
