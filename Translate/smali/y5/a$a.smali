.class public final Ly5/a$a;
.super Lkotlin/coroutines/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/a;->a(Lkotlinx/coroutines/c0;Ljava/util/function/Supplier;)Lx5/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx5/b;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/z$a;Lx5/b;)V
    .locals 0

    iput-object p2, p0, Ly5/a$a;->b:Lx5/b;

    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/g$c;)V

    return-void
.end method


# virtual methods
.method public b0(Lkotlin/coroutines/g;Ljava/lang/Throwable;)V
    .locals 0

    instance-of p1, p2, Ljava/lang/Exception;

    if-eqz p1, :cond_0

    iget-object p0, p0, Ly5/a$a;->b:Lx5/b;

    check-cast p2, Ljava/lang/Exception;

    invoke-virtual {p0, p2}, Lx5/b;->d(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
