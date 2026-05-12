.class public Lkotlinx/coroutines/channels/l;
.super Lkotlinx/coroutines/channels/b;
.source "SourceFile"


# instance fields
.field private final n:I

.field private final o:Lkotlinx/coroutines/channels/a;


# direct methods
.method public constructor <init>(ILkotlinx/coroutines/channels/a;Lw8/l;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/channels/b;-><init>(ILw8/l;)V

    iput p1, p0, Lkotlinx/coroutines/channels/l;->n:I

    iput-object p2, p0, Lkotlinx/coroutines/channels/l;->o:Lkotlinx/coroutines/channels/a;

    sget-object p0, Lkotlinx/coroutines/channels/a;->SUSPEND:Lkotlinx/coroutines/channels/a;

    if-eq p2, p0, :cond_1

    const/4 p0, 0x1

    if-lt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Buffered channel capacity must be at least 1, but "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " was specified"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "This implementation does not support suspension for senders, use "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lkotlinx/coroutines/channels/b;

    invoke-static {p1}, Lkotlin/jvm/internal/d0;->b(Ljava/lang/Class;)Lc9/c;

    move-result-object p1

    invoke-interface {p1}, Lc9/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final u0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/channels/g;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lkotlinx/coroutines/channels/g;->c(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    iget-object p0, p0, Lkotlinx/coroutines/channels/b;->c:Lw8/l;

    if-eqz p0, :cond_2

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lkotlinx/coroutines/internal/y;->d(Lw8/l;Ljava/lang/Object;Lkotlinx/coroutines/internal/p0;ILjava/lang/Object;)Lkotlinx/coroutines/internal/p0;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    throw p0

    :cond_2
    :goto_0
    sget-object p0, Lkotlinx/coroutines/channels/g;->a:Lkotlinx/coroutines/channels/g$b;

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/g$b;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method private final v0(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lkotlinx/coroutines/channels/l;->o:Lkotlinx/coroutines/channels/a;

    sget-object v1, Lkotlinx/coroutines/channels/a;->DROP_LATEST:Lkotlinx/coroutines/channels/a;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/l;->u0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->k0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected V()Z
    .locals 1

    iget-object p0, p0, Lkotlinx/coroutines/channels/l;->o:Lkotlinx/coroutines/channels/a;

    sget-object v0, Lkotlinx/coroutines/channels/a;->DROP_OLDEST:Lkotlinx/coroutines/channels/a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/channels/l;->v0(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
