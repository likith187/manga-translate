.class final Lcom/oplus/vfxsdk/naive/a$d;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/vfxsdk/naive/a;-><init>(Landroid/content/Context;Li8/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/vfxsdk/naive/a;


# direct methods
.method constructor <init>(Lcom/oplus/vfxsdk/naive/a;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a$d;->this$0:Lcom/oplus/vfxsdk/naive/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a$d;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a$d;->this$0:Lcom/oplus/vfxsdk/naive/a;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->n()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    .line 4
    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->flush()V

    goto :goto_0

    :cond_0
    return-void
.end method
