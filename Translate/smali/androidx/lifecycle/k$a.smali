.class public final Landroidx/lifecycle/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq0/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lq0/h;)V
    .locals 4

    const-string p0, "owner"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroidx/lifecycle/x0;

    if-eqz p0, :cond_3

    move-object p0, p1

    check-cast p0, Landroidx/lifecycle/x0;

    invoke-interface {p0}, Landroidx/lifecycle/x0;->getViewModelStore()Landroidx/lifecycle/w0;

    move-result-object p0

    invoke-interface {p1}, Lq0/h;->getSavedStateRegistry()Lq0/e;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/lifecycle/w0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/lifecycle/w0;->b(Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/lifecycle/s;->getLifecycle()Landroidx/lifecycle/l;

    move-result-object v3

    invoke-static {v2, v0, v3}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/s0;Lq0/e;Landroidx/lifecycle/l;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/lifecycle/w0;->c()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const-class p0, Landroidx/lifecycle/k$a;

    invoke-virtual {v0, p0}, Lq0/e;->d(Ljava/lang/Class;)V

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner. Received owner: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
