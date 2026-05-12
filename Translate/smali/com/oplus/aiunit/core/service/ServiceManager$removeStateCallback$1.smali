.class final Lcom/oplus/aiunit/core/service/ServiceManager$removeStateCallback$1;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/aiunit/core/service/ServiceManager;->removeStateCallback(Ljava/lang/String;Lcom/oplus/aiunit/core/callback/DetectStateCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/s;",
        "Lw8/l;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;


# direct methods
.method public constructor <init>(Lcom/oplus/aiunit/core/callback/DetectStateCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/aiunit/core/service/ServiceManager$removeStateCallback$1;->$callback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/oplus/aiunit/core/callback/DetectStateCallback;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "weakReference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-eqz p1, :cond_1

    .line 3
    iget-object p0, p0, Lcom/oplus/aiunit/core/service/ServiceManager$removeStateCallback$1;->$callback:Lcom/oplus/aiunit/core/callback/DetectStateCallback;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Lcom/oplus/aiunit/core/service/ServiceManager$removeStateCallback$1;->invoke(Ljava/lang/ref/WeakReference;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
