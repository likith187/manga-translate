.class public final Lcom/coloros/translate/repository/remote/c$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/remote/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/repository/remote/c;


# direct methods
.method constructor <init>(Lcom/coloros/translate/repository/remote/c;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/repository/remote/c$b;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c$h;->b(Lcom/coloros/translate/repository/remote/c$b;)V

    return-void
.end method

.method private static final b(Lcom/coloros/translate/repository/remote/c$b;)V
    .locals 0

    invoke-interface {p0}, Lcom/coloros/translate/repository/remote/c$b;->a()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/content/ServiceConnection;->onBindingDied(Landroid/content/ComponentName;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "TranslationManager"

    const-string v0, "ServiceConnection onBindingDied"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string p1, "TranslationManager"

    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    :try_start_0
    sget-object v5, Ln8/r;->Companion:Ln8/r$a;

    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v6, "onServiceConnected"

    invoke-virtual {v5, p1, v6}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/translate/repository/remote/c;->l(Lcom/coloros/translate/repository/remote/c;Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;)V

    new-instance p2, Lcom/coloros/translate/repository/remote/c$h$a;

    invoke-direct {p2, v0}, Lcom/coloros/translate/repository/remote/c$h$a;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v3, v4, p2, v2, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    sget-object p2, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p2}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onServiceConnected "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p1}, Lcom/coloros/translate/repository/remote/c;->d(Lcom/coloros/translate/repository/remote/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->u()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    const-string v0, "long_rtasr_recorder_with_unit"

    invoke-virtual {p2, v0}, Lcom/coloros/translate/repository/remote/c;->y(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->p(Lcom/coloros/translate/engine/IRtasrEngine;)V

    :cond_1
    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p1}, Lcom/coloros/translate/repository/remote/c;->e(Lcom/coloros/translate/repository/remote/c;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->v()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    const-string v0, "short_rtasr_recorder_with_unit"

    invoke-virtual {p2, v0}, Lcom/coloros/translate/repository/remote/c;->y(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->p(Lcom/coloros/translate/engine/IRtasrEngine;)V

    :cond_2
    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p1}, Lcom/coloros/translate/repository/remote/c;->g(Lcom/coloros/translate/repository/remote/c;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/coloros/translate/repository/remote/c$h$b;

    iget-object p2, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-direct {p1, p2}, Lcom/coloros/translate/repository/remote/c$h$b;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v3, v4, p1, v2, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p1}, Lcom/coloros/translate/repository/remote/c;->f(Lcom/coloros/translate/repository/remote/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    const-string v0, "aiunit_translate"

    invoke-static {p2, v0}, Lcom/coloros/translate/repository/remote/c;->j(Lcom/coloros/translate/repository/remote/c;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->d(Lcom/coloros/translate/engine/ITranslateEngine;)V

    :cond_4
    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p1}, Lcom/coloros/translate/repository/remote/c;->i(Lcom/coloros/translate/repository/remote/c;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-virtual {p1}, Lcom/coloros/translate/repository/remote/c;->z()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    const-string v0, "aiunit_stream_translate"

    invoke-static {p2, v0}, Lcom/coloros/translate/repository/remote/c;->j(Lcom/coloros/translate/repository/remote/c;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object p2

    const-string v0, "model"

    invoke-virtual {p1, p2, v0}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->e(Lcom/coloros/translate/engine/ITranslateEngine;Ljava/lang/String;)V

    :cond_5
    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c;->a(Lcom/coloros/translate/repository/remote/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/repository/remote/c$b;

    invoke-interface {p1}, Lcom/coloros/translate/repository/remote/c$b;->b()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 6

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TranslationManager"

    const-string v1, "onServiceDisconnected"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c$h;->a:Lcom/coloros/translate/repository/remote/c;

    :try_start_0
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Lcom/coloros/translate/repository/remote/c;->a(Lcom/coloros/translate/repository/remote/c;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/translate/repository/remote/c$b;

    new-instance v2, Lcom/coloros/translate/repository/remote/d;

    invoke-direct {v2, p1}, Lcom/coloros/translate/repository/remote/d;-><init>(Lcom/coloros/translate/repository/remote/c$b;)V

    const/4 p1, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, p1, v3}, Lcom/coloros/translate/utils/z0;->h(JLjava/lang/Runnable;ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
