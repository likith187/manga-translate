.class final Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;
.super Landroid/os/IOplusExInputCallBack$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExInputCallBack"
.end annotation


# instance fields
.field private final a:Landroid/os/IOplusExService;

.field private final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/os/IOplusExService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/IOplusExInputCallBack$Stub;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a:Landroid/os/IOplusExService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/IOplusExInputCallBack;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a:Landroid/os/IOplusExService;

    if-eqz v1, :cond_1

    invoke-interface {v1, p0}, Landroid/os/IOplusExService;->registerInputEvent(Landroid/os/IOplusExInputCallBack;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "ScreenTranslationTranslationView"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerInputEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final b(Landroid/os/IOplusExInputCallBack;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a:Landroid/os/IOplusExService;

    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Landroid/os/IOplusExService;->unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "ScreenTranslationTranslationView"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterInputEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public final c()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->a:Landroid/os/IOplusExService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Landroid/os/IOplusExService;->unregisterInputEvent(Landroid/os/IOplusExInputCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "ScreenTranslationTranslationView"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterAll "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/coloros/translate/screen/widget/ScreenTranslationTranslationView$ExInputCallBack;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IOplusExInputCallBack;

    invoke-interface {v1, p1}, Landroid/os/IOplusExInputCallBack;->onInputEvent(Landroid/view/InputEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method
