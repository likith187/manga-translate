.class public final Lcom/coloros/translate/repository/remote/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/remote/c$a;,
        Lcom/coloros/translate/repository/remote/c$b;
    }
.end annotation


# static fields
.field public static final q:Lcom/coloros/translate/repository/remote/c$a;


# instance fields
.field private a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/coloros/translate/engine/service/b;

.field private final h:Ln8/j;

.field private final i:Ln8/j;

.field private final j:Ln8/j;

.field private final k:Ln8/j;

.field private final l:Ln8/j;

.field private m:Lcom/coloros/translate/repository/remote/c$c;

.field private final n:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private o:Lcom/coloros/translate/repository/remote/c$h;

.field private p:Lcom/coloros/translate/repository/remote/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/remote/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/remote/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/remote/c;->q:Lcom/coloros/translate/repository/remote/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/coloros/translate/repository/remote/c$e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$e;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->h:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$f;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$f;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->i:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$i;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->j:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$g;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$g;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->k:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$j;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$j;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->l:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$c;

    invoke-direct {v0}, Lcom/coloros/translate/repository/remote/c$c;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->m:Lcom/coloros/translate/repository/remote/c$c;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$h;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$h;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->o:Lcom/coloros/translate/repository/remote/c$h;

    new-instance v0, Lcom/coloros/translate/repository/remote/c$d;

    invoke-direct {v0}, Lcom/coloros/translate/repository/remote/c$d;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->p:Lcom/coloros/translate/repository/remote/c$d;

    return-void
.end method

.method private final A(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTranslateEngine type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TranslationManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->generateTranslateEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateTranslateEngine : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private final B()Lcom/coloros/translate/engine/ITtsEngine;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    if-eqz p0, :cond_0

    const-string v1, "aiunit_stream_tts"

    invoke-interface {p0, v1}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->generateTtsEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v0

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateTtsEngine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "TranslationManager"

    invoke-virtual {v1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private final E()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslationManager"

    const-string v2, "resetEngineHandler"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/repository/remote/c;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->u()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->p(Lcom/coloros/translate/engine/IRtasrEngine;)V

    :cond_0
    iget-boolean v0, p0, Lcom/coloros/translate/repository/remote/c;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->v()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->p(Lcom/coloros/translate/engine/IRtasrEngine;)V

    :cond_1
    iget-boolean v0, p0, Lcom/coloros/translate/repository/remote/c;->e:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->f(Lcom/coloros/translate/engine/ITtsEngine;)V

    :cond_2
    iget-boolean v0, p0, Lcom/coloros/translate/repository/remote/c;->d:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->d(Lcom/coloros/translate/engine/ITranslateEngine;)V

    :cond_3
    iget-boolean v0, p0, Lcom/coloros/translate/repository/remote/c;->f:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->z()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;->d(Lcom/coloros/translate/engine/ITranslateEngine;)V

    :cond_4
    return-void
.end method

.method private final I()V
    .locals 4

    new-instance v0, Lcom/coloros/translate/repository/remote/c$k;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$k;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/repository/remote/c;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/repository/remote/c$c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->m:Lcom/coloros/translate/repository/remote/c$c;

    return-object p0
.end method

.method public static final synthetic c(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    return-object p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/repository/remote/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/remote/c;->b:Z

    return p0
.end method

.method public static final synthetic e(Lcom/coloros/translate/repository/remote/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/remote/c;->c:Z

    return p0
.end method

.method public static final synthetic f(Lcom/coloros/translate/repository/remote/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/remote/c;->d:Z

    return p0
.end method

.method public static final synthetic g(Lcom/coloros/translate/repository/remote/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/remote/c;->e:Z

    return p0
.end method

.method public static final synthetic h(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/repository/remote/c$d;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->p:Lcom/coloros/translate/repository/remote/c$d;

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/repository/remote/c;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/repository/remote/c;->f:Z

    return p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/repository/remote/c;Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/repository/remote/c;->A(Ljava/lang/String;)Lcom/coloros/translate/engine/ITranslateEngine;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic k(Lcom/coloros/translate/repository/remote/c;)Lcom/coloros/translate/engine/ITtsEngine;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/c;->B()Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic l(Lcom/coloros/translate/repository/remote/c;Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    return-void
.end method

.method public static final synthetic m(Lcom/coloros/translate/repository/remote/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/remote/c;->b:Z

    return-void
.end method

.method public static final synthetic n(Lcom/coloros/translate/repository/remote/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/remote/c;->c:Z

    return-void
.end method

.method public static final synthetic o(Lcom/coloros/translate/repository/remote/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/remote/c;->d:Z

    return-void
.end method

.method public static final synthetic p(Lcom/coloros/translate/repository/remote/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/remote/c;->e:Z

    return-void
.end method

.method public static final synthetic q(Lcom/coloros/translate/repository/remote/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/repository/remote/c;->f:Z

    return-void
.end method

.method public static final synthetic r(Lcom/coloros/translate/repository/remote/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/c;->I()V

    return-void
.end method


# virtual methods
.method public final C()Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final D(Lcom/coloros/translate/repository/remote/c$b;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslationManager"

    const-string v2, "registerConnectCallBack"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final F()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    const-string v1, "TranslationManager"

    if-nez v0, :cond_1

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "startTranslationService"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/coloros/translate/engine/service/b;

    invoke-direct {v0}, Lcom/coloros/translate/engine/service/b;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/service/b;->d()V

    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/service/b;->c()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->o:Lcom/coloros/translate/repository/remote/c$h;

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/repository/remote/c$h;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "service has exist"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final G()V
    .locals 6

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "stopTranslationService"

    const-string v2, "TranslationManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/coloros/translate/repository/remote/c;->m:Lcom/coloros/translate/repository/remote/c$c;

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->setEngineAutoDestroyWhenBinderDied(Lcom/coloros/translate/engine/IRegisterListener;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/coloros/translate/repository/remote/c;->m:Lcom/coloros/translate/repository/remote/c$c;

    invoke-interface {v1, v3}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->unRegisterClient(Lcom/coloros/translate/engine/IRegisterListener;)V

    sget-object v1, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v1}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-static {v1}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopTranslationService(),unRegisterClient:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/coloros/translate/engine/service/b;->f()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_5

    :cond_3
    :goto_4
    iget-object v1, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/coloros/translate/engine/service/b;->e()V

    :cond_4
    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->g:Lcom/coloros/translate/engine/service/b;

    iput-object v0, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/c;->E()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :goto_5
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_6
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTranslationService() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final H(Lcom/coloros/translate/repository/remote/c$b;)V
    .locals 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslationManager"

    const-string v2, "registerConnectCallBack"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/repository/remote/c;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->n:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final J()V
    .locals 4

    new-instance v0, Lcom/coloros/translate/repository/remote/c$l;

    invoke-direct {v0, p0}, Lcom/coloros/translate/repository/remote/c$l;-><init>(Lcom/coloros/translate/repository/remote/c;)V

    const/4 p0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, p0, v1}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final s()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "checkAiUnitLongAsrEngine()"

    const-string v2, "TranslationManager"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->u()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checkAiUnitLongAsrEngine() get"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->u()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    const-string v1, "long_rtasr_recorder_with_unit"

    invoke-virtual {p0, v1}, Lcom/coloros/translate/repository/remote/c;->y(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->p(Lcom/coloros/translate/engine/IRtasrEngine;)V

    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslationManager"

    const-string v2, "checkTtsEngine()"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/c;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-direct {p0}, Lcom/coloros/translate/repository/remote/c;->B()Lcom/coloros/translate/engine/ITtsEngine;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->f(Lcom/coloros/translate/engine/ITtsEngine;)V

    :cond_0
    return-void
.end method

.method public final u()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->h:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-object p0
.end method

.method public final v()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->i:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-object p0
.end method

.method public final w()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->k:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    return-object p0
.end method

.method public final x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->j:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method

.method public final y(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;
    .locals 6

    const-string v0, "TranslationManager"

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v3, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRtasrEngine type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mITranslateServiceBinder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->a:Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/coloros/translate/engine/ITranslateServiceInterProxyBinder;->generateRtasrEngine(Ljava/lang/String;)Lcom/coloros/translate/engine/IRtasrEngine;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-object v1

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateRtasrEngine : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public final z()Lcom/coloros/translate/repository/remote/TranslationEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/repository/remote/c;->l:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TranslationEngineHandler;

    return-object p0
.end method
