.class final Lcom/coloros/translate/repository/remote/c$h$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/c$h;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/repository/remote/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/remote/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/c$h$b;->this$0:Lcom/coloros/translate/repository/remote/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c$h$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c$h$b;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c$h$b;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c;->k(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->f(Lcom/coloros/translate/engine/ITtsEngine;)V

    return-void
.end method
