.class public final Lx5/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lx5/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx5/d;

    invoke-direct {v0}, Lx5/d;-><init>()V

    sput-object v0, Lx5/d;->INSTANCE:Lx5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/function/Supplier;)Lx5/a;
    .locals 2

    const-string v0, "supplier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lx5/c;->g:Lx5/c$b;

    invoke-virtual {v0}, Lx5/c$b;->a()Lx5/c;

    move-result-object v0

    invoke-virtual {v0}, Lx5/c;->c()Lkotlinx/coroutines/c0;

    move-result-object v0

    sget-object v1, Ly5/a;->INSTANCE:Ly5/a;

    invoke-virtual {v1, v0, p0}, Ly5/a;->a(Lkotlinx/coroutines/c0;Ljava/util/function/Supplier;)Lx5/a;

    move-result-object p0

    return-object p0
.end method
