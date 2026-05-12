.class final Landroidx/lifecycle/g0$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/g0$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/l$a;

.field final synthetic b:Lkotlin/jvm/internal/c0;

.field final synthetic c:Lkotlinx/coroutines/c0;

.field final synthetic f:Landroidx/lifecycle/l$a;

.field final synthetic h:Lkotlinx/coroutines/i;

.field final synthetic i:Lkotlinx/coroutines/sync/a;

.field final synthetic j:Lw8/p;


# direct methods
.method constructor <init>(Landroidx/lifecycle/l$a;Lkotlin/jvm/internal/c0;Lkotlinx/coroutines/c0;Landroidx/lifecycle/l$a;Lkotlinx/coroutines/i;Lkotlinx/coroutines/sync/a;Lw8/p;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/g0$a$a$a;->a:Landroidx/lifecycle/l$a;

    iput-object p2, p0, Landroidx/lifecycle/g0$a$a$a;->b:Lkotlin/jvm/internal/c0;

    iput-object p3, p0, Landroidx/lifecycle/g0$a$a$a;->c:Lkotlinx/coroutines/c0;

    iput-object p4, p0, Landroidx/lifecycle/g0$a$a$a;->f:Landroidx/lifecycle/l$a;

    iput-object p5, p0, Landroidx/lifecycle/g0$a$a$a;->h:Lkotlinx/coroutines/i;

    iput-object p6, p0, Landroidx/lifecycle/g0$a$a$a;->i:Lkotlinx/coroutines/sync/a;

    iput-object p7, p0, Landroidx/lifecycle/g0$a$a$a;->j:Lw8/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/s;Landroidx/lifecycle/l$a;)V
    .locals 7

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/lifecycle/g0$a$a$a;->a:Landroidx/lifecycle/l$a;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Landroidx/lifecycle/g0$a$a$a;->b:Lkotlin/jvm/internal/c0;

    iget-object v1, p0, Landroidx/lifecycle/g0$a$a$a;->c:Lkotlinx/coroutines/c0;

    new-instance v4, Landroidx/lifecycle/g0$a$a$a$a;

    iget-object p2, p0, Landroidx/lifecycle/g0$a$a$a;->i:Lkotlinx/coroutines/sync/a;

    iget-object p0, p0, Landroidx/lifecycle/g0$a$a$a;->j:Lw8/p;

    invoke-direct {v4, p2, p0, v0}, Landroidx/lifecycle/g0$a$a$a$a;-><init>(Lkotlinx/coroutines/sync/a;Lw8/p;Lkotlin/coroutines/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    move-result-object p0

    iput-object p0, p1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    return-void

    :cond_0
    iget-object p1, p0, Landroidx/lifecycle/g0$a$a$a;->f:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_2

    iget-object p1, p0, Landroidx/lifecycle/g0$a$a$a;->b:Lkotlin/jvm/internal/c0;

    iget-object p1, p1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/f1;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/f1$a;->a(Lkotlinx/coroutines/f1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/g0$a$a$a;->b:Lkotlin/jvm/internal/c0;

    iput-object v0, p1, Lkotlin/jvm/internal/c0;->element:Ljava/lang/Object;

    :cond_2
    sget-object p1, Landroidx/lifecycle/l$a;->ON_DESTROY:Landroidx/lifecycle/l$a;

    if-ne p2, p1, :cond_3

    iget-object p0, p0, Landroidx/lifecycle/g0$a$a$a;->h:Lkotlinx/coroutines/i;

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/coroutines/d;->resumeWith(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
