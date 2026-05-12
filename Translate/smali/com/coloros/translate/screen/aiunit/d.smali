.class public abstract Lcom/coloros/translate/screen/aiunit/d;
.super Landroidx/lifecycle/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/aiunit/d$a;,
        Lcom/coloros/translate/screen/aiunit/d$b;
    }
.end annotation


# static fields
.field public static final m:Lcom/coloros/translate/screen/aiunit/d$a;


# instance fields
.field private final l:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/aiunit/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/aiunit/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/aiunit/d;->m:Lcom/coloros/translate/screen/aiunit/d$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/lifecycle/a0;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/coloros/translate/screen/aiunit/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/screen/aiunit/d;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/screen/aiunit/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private final p(Landroidx/lifecycle/b0;I)Landroidx/lifecycle/b0;
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createObserverWrapper: observer is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleLiveData"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/screen/aiunit/d$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/translate/screen/aiunit/d$b;-><init>(Lcom/coloros/translate/screen/aiunit/d;Landroidx/lifecycle/b0;I)V

    return-object v0
.end method


# virtual methods
.method public g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/aiunit/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/coloros/translate/screen/aiunit/d;->p(Landroidx/lifecycle/b0;I)Landroidx/lifecycle/b0;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroidx/lifecycle/y;->g(Landroidx/lifecycle/s;Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public h(Landroidx/lifecycle/b0;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/aiunit/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/screen/aiunit/d;->p(Landroidx/lifecycle/b0;I)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/lifecycle/y;->h(Landroidx/lifecycle/b0;)V

    return-void
.end method

.method public l(Landroidx/lifecycle/b0;)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coloros/translate/screen/aiunit/d$b;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/lifecycle/y;->l(Landroidx/lifecycle/b0;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/aiunit/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/translate/screen/aiunit/d;->p(Landroidx/lifecycle/b0;I)Landroidx/lifecycle/b0;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/lifecycle/y;->l(Landroidx/lifecycle/b0;)V

    :goto_0
    return-void
.end method

.method public n(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/aiunit/d;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    invoke-super {p0, p1}, Landroidx/lifecycle/a0;->n(Ljava/lang/Object;)V

    return-void
.end method
