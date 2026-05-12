.class public final Lcom/coloros/translate/ui/simultaneous/main/m$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m$j;->invoke()Lcom/coloros/translate/ui/simultaneous/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/m;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLo2/a;)V
    .locals 5

    const-string p1, "asrTranslateResult"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->t0(Lo2/a;ZZ)V

    invoke-static {}, Lcom/coloros/translate/utils/q;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->R()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lo2/a;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->m0()Landroidx/lifecycle/a0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->j0()Z

    move-result v1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-virtual {v2}, Lcom/coloros/translate/ui/simultaneous/main/m;->i0()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTts invoke isPlayTtsEnable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  isPlayTts"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {p1, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    invoke-static {p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->u(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    invoke-virtual {p2}, Lo2/a;->h()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/g0;->c(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a:Lcom/coloros/translate/ui/simultaneous/main/m;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/m;->r0(Lcom/coloros/translate/ui/simultaneous/main/m;ZILjava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lo2/a;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/ui/simultaneous/main/m$j$a;->a(ZLo2/a;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method
