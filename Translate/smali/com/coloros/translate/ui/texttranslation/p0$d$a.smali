.class final Lcom/coloros/translate/ui/texttranslation/p0$d$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/texttranslation/p0$d;->onStatus(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/translate/ui/texttranslation/p0;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/texttranslation/p0;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->s(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->d()I

    move-result v0

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->t(Lcom/coloros/translate/ui/texttranslation/p0;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->T()Landroidx/lifecycle/a0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/coloros/translate/R$string;->sound_too_small:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    const/16 v1, 0xdac

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/texttranslation/p0;->s0(I)V

    .line 5
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v1}, Lcom/coloros/translate/ui/texttranslation/p0;->x(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/utils/v0;->g(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {v0}, Lcom/coloros/translate/ui/texttranslation/p0;->w(Lcom/coloros/translate/ui/texttranslation/p0;)Lcom/coloros/translate/utils/v0;

    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-static {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->x(Lcom/coloros/translate/ui/texttranslation/p0;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1388

    .line 8
    invoke-virtual {v0, p0, v1, v2}, Lcom/coloros/translate/utils/v0;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/ui/texttranslation/p0$d$a;->this$0:Lcom/coloros/translate/ui/texttranslation/p0;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/texttranslation/p0;->W()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    :goto_0
    return-void
.end method
