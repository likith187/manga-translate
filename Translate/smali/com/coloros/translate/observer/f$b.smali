.class public final Lcom/coloros/translate/observer/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/observer/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/b0;

.field private final b:I

.field final synthetic c:Lcom/coloros/translate/observer/f;


# direct methods
.method public constructor <init>(Lcom/coloros/translate/observer/f;Landroidx/lifecycle/b0;I)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/observer/f$b;->c:Lcom/coloros/translate/observer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coloros/translate/observer/f$b;->a:Landroidx/lifecycle/b0;

    iput p3, p0, Lcom/coloros/translate/observer/f$b;->b:I

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/observer/f$b;->a:Landroidx/lifecycle/b0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/coloros/translate/observer/f$b;->b:I

    iget-object v3, p0, Lcom/coloros/translate/observer/f$b;->c:Lcom/coloros/translate/observer/f;

    invoke-static {v3}, Lcom/coloros/translate/observer/f;->o(Lcom/coloros/translate/observer/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChanged: observer is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", curVersion is "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SingleLiveData"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/observer/f$b;->c:Lcom/coloros/translate/observer/f;

    invoke-static {v0}, Lcom/coloros/translate/observer/f;->o(Lcom/coloros/translate/observer/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/coloros/translate/observer/f$b;->b:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/observer/f$b;->a:Landroidx/lifecycle/b0;

    invoke-interface {p0, p1}, Landroidx/lifecycle/b0;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/coloros/translate/observer/f$b;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p1, Lcom/coloros/translate/observer/f$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/coloros/translate/observer/f$b;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v1, p1, Lcom/coloros/translate/observer/f$b;->a:Landroidx/lifecycle/b0;

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/observer/f$b;->a:Landroidx/lifecycle/b0;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/observer/f$b;->a:Landroidx/lifecycle/b0;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
