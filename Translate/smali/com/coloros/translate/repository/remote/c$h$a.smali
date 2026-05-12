.class final Lcom/coloros/translate/repository/remote/c$h$a;
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

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/c$h$a;->this$0:Lcom/coloros/translate/repository/remote/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c$h$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c$h$a;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/c;->c(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/c$h$a;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-static {v1}, Lcom/coloros/translate/repository/remote/c;->b(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/repository/remote/c$c;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->registerClient(Lcom/coloros/translate/engine/IRegisterListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c$h$a;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/c;->r(Lcom/coloros/translate/repository/remote/c;)V

    .line 4
    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c$h$a;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-static {v0}, Lcom/coloros/translate/repository/remote/c;->c(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c$h$a;->this$0:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c;->b(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/repository/remote/c$c;

    move-result-object p0

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p0, v1}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->setEngineAutoDestroyWhenBinderDied(Lcom/coloros/translate/engine/IRegisterListener;Z)V

    :cond_1
    return-void
.end method
