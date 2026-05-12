.class public final Lcom/coloros/translate/ui/simultaneous/main/m;
.super Lcom/coloros/translate/base/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/simultaneous/main/m$a;
    }
.end annotation


# static fields
.field public static final W:Lcom/coloros/translate/ui/simultaneous/main/m$a;

.field private static X:Z

.field private static Y:Z


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private final C:Landroidx/lifecycle/a0;

.field private D:I

.field private E:Z

.field private F:Z

.field private final G:Landroidx/lifecycle/a0;

.field private volatile H:Z

.field private I:Ljava/util/concurrent/LinkedBlockingQueue;

.field private J:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private K:Z

.field private final L:Ln8/j;

.field private final M:Ln8/j;

.field private final N:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

.field private final O:Ln8/j;

.field private volatile P:I

.field private final Q:Ljava/lang/Runnable;

.field private final R:Landroid/os/Handler;

.field private S:Z

.field private final T:Lcom/coloros/translate/ui/simultaneous/main/m$i;

.field private final U:Ln8/j;

.field private volatile V:Z

.field private g:Z

.field private volatile h:Z

.field private volatile i:Z

.field private volatile j:Z

.field private volatile k:J

.field private l:Z

.field private final m:Landroidx/lifecycle/a0;

.field private final n:Landroidx/lifecycle/a0;

.field private final o:Landroidx/lifecycle/a0;

.field private final p:Landroidx/lifecycle/a0;

.field private final q:Landroidx/lifecycle/a0;

.field private final r:Landroidx/lifecycle/a0;

.field private s:Landroidx/lifecycle/a0;

.field private t:Landroidx/lifecycle/a0;

.field private u:I

.field private volatile v:Z

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/main/m;->W:Lcom/coloros/translate/ui/simultaneous/main/m$a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 5

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/base/q;-><init>(Landroid/app/Application;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->j:Z

    new-instance v0, Landroidx/lifecycle/a0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->m:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/o;->t0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->o:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v3}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->p:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->q:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->r:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->s:Landroidx/lifecycle/a0;

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->t:Landroidx/lifecycle/a0;

    const-string v0, ""

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->x:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-sensitive"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->A:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->B:Z

    new-instance v0, Landroidx/lifecycle/a0;

    invoke-direct {v0, v3}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->C:Landroidx/lifecycle/a0;

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->F:Z

    new-instance v0, Landroidx/lifecycle/a0;

    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/lifecycle/a0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->G:Landroidx/lifecycle/a0;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/main/m$b;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/m$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->L:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/m$j;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$j;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->M:Ln8/j;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/m$d;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$d;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->N:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/main/m$c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/m$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->O:Ln8/j;

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->P:I

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/l;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/main/l;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->Q:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->R:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/m$i;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$i;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->T:Lcom/coloros/translate/ui/simultaneous/main/m$i;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/main/m$e;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/m$e;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->U:Ln8/j;

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    return-void
.end method

.method public static final synthetic A(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->B:Z

    return-void
.end method

.method public static final synthetic B(Lcom/coloros/translate/ui/simultaneous/main/m;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    return-void
.end method

.method public static final synthetic C(Lcom/coloros/translate/ui/simultaneous/main/m;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Q0()V

    return-void
.end method

.method private final E(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/coloros/translate/repository/local/a;->INSTANCE:Lcom/coloros/translate/repository/local/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/local/a;->a(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->U()Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/coloros/translate/engine/info/AsrParams;->e(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/coloros/translate/engine/info/AsrParams;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "asr_param_call_id"

    iget-object v5, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->y:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "asr_param_translate_switch"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "OffsetMsgId"

    iget-wide v5, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->k:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string v3, "sceneId"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string v3, "enableLlm"

    invoke-virtual {p0, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/coloros/translate/engine/info/AsrParams;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string v3, "appVersion"

    const-string v4, "16.0.26"

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->o(Lcom/coloros/translate/engine/info/AsrParams;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeLanguageConfig fl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tl:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " llm:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SimultaneousMainViewModel"

    invoke-virtual {p0, p2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final F(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "clearCacheFile"

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    const-string v0, "clear_translation_cache_file"

    const-string v1, ""

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "asr_param_call_id"

    invoke-virtual {v3, v4, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {p0, v0, v1, v3}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearCacheFile error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/coloros/translate/ui/simultaneous/main/m;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->F(Ljava/lang/String;)V

    return-void
.end method

.method private final I()Z
    .locals 8

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "fillPlaceValidData"

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-static {v1}, Lkotlin/collections/o;->d0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/a;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lo2/a;->d()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const-string p0, "fillPlaceValidData exist"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    invoke-virtual {v1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1}, Lo2/a;->k()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lo2/a;->v(Z)V

    invoke-static {}, Lcom/coloros/translate/utils/q;->a()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/coloros/translate/ui/simultaneous/main/g0;->c(Ljava/util/concurrent/LinkedBlockingQueue;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {p0, v3, v0, v2}, Lcom/coloros/translate/ui/simultaneous/main/m;->r0(Lcom/coloros/translate/ui/simultaneous/main/m;ZILjava/lang/Object;)Z

    :cond_1
    move v3, v0

    :cond_2
    invoke-virtual {v1}, Lo2/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lo2/a;->i()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->b0()Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coloros/translate/ui/simultaneous/utils/f;->i(Lo2/a;)V

    :cond_3
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->m:Landroidx/lifecycle/a0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :cond_4
    return v3
.end method

.method public static synthetic K(Lcom/coloros/translate/ui/simultaneous/main/m;JLjava/lang/String;ZILjava/lang/Object;)Ln8/q;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/translate/ui/simultaneous/main/m;->J(JLjava/lang/String;Z)Ln8/q;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K0(Lcom/coloros/translate/ui/simultaneous/main/m;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->J0(Z)V

    return-void
.end method

.method private final L(Lo2/a;)I
    .locals 4

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {p0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const-string v2, "SimultaneousMainViewModel"

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "findIndex index:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "findIndex index:-1"

    invoke-virtual {p0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return v0
.end method

.method private final N0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->T:Lcom/coloros/translate/ui/simultaneous/main/m$i;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->H(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->n()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "unRegisterListener"

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->t(Ljava/lang/String;)V

    return-void
.end method

.method private final O()Ljava/lang/String;
    .locals 9

    const-string v0, "SimultaneousMainViewModel"

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "getCurrentRecordFile"

    invoke-virtual {v2, v0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v3}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/translate/repository/remote/c;->u()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v3

    const-string v4, "grantPermission"

    const-string v5, ""

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "asr_param_share_audio_package_name"

    sget-object v8, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {v8}, Lcom/coloros/translate/TranslationApplication$a;->a()Landroid/app/Application;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "asr_param_call_id"

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->y:Ljava/lang/String;

    invoke-virtual {v6, v7, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-virtual {v3, v4, v5, v6}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->i(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v3, "shareResult"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "shareResultFile"

    invoke-virtual {p0, v3, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRecordFile fn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :cond_1
    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentRecordFile error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private static final P0()V
    .locals 4

    sget v0, Lcom/coloros/translate/R$string;->sound_too_small:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    return-void
.end method

.method private final Q0()V
    .locals 7

    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->P:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "simultaneous_name_index"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final U()Lcom/coloros/translate/engine/info/AsrParams;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->L:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/info/AsrParams;

    return-object p0
.end method

.method private final Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->O:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    return-object p0
.end method

.method private final Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->U:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    return-object p0
.end method

.method private final b0()Lcom/coloros/translate/ui/simultaneous/utils/f;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->M:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/ui/simultaneous/utils/f;

    return-object p0
.end method

.method private final f0()Z
    .locals 3

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->U()Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->U()Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/info/AsrParams;->c()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->A:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLanguageChange :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static synthetic o()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/ui/simultaneous/main/m;->P0()V

    return-void
.end method

.method public static final synthetic p(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->y:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic q(Lcom/coloros/translate/ui/simultaneous/main/m;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->P:I

    return p0
.end method

.method public static final synthetic r(Lcom/coloros/translate/ui/simultaneous/main/m;)Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->N:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    return-object p0
.end method

.method public static synthetic r0(Lcom/coloros/translate/ui/simultaneous/main/m;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->q0(Z)Z

    move-result p0

    return p0
.end method

.method public static final synthetic s(Lcom/coloros/translate/ui/simultaneous/main/m;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->R:Landroid/os/Handler;

    return-object p0
.end method

.method private final s0()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainViewModel"

    const-string v2, "realStop"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    return-void
.end method

.method public static final synthetic t(Lcom/coloros/translate/ui/simultaneous/main/m;)Lcom/coloros/translate/ui/simultaneous/utils/f;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->b0()Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object p0
.end method

.method private final u0()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->T:Lcom/coloros/translate/ui/simultaneous/main/m$i;

    invoke-virtual {v0, v1}, Lcom/coloros/translate/repository/remote/c;->D(Lcom/coloros/translate/repository/remote/c$b;)V

    invoke-virtual {p0}, Lcom/coloros/translate/base/q;->l()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerListener"

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->N:Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->l(Ljava/lang/String;Lcom/coloros/translate/repository/remote/RtasrEngineHandler$RtasrListener;)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic v(Lcom/coloros/translate/ui/simultaneous/main/m;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->Q:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic w(Lcom/coloros/translate/ui/simultaneous/main/m;)Z
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->f0()Z

    move-result p0

    return p0
.end method

.method public static final synthetic x(Lcom/coloros/translate/ui/simultaneous/main/m;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->B:Z

    return p0
.end method

.method private final x0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveOriginLanguage fl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->z:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->A:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic y(Lcom/coloros/translate/ui/simultaneous/main/m;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->P:I

    return-void
.end method

.method public static final synthetic z(Z)V
    .locals 0

    sput-boolean p0, Lcom/coloros/translate/ui/simultaneous/main/m;->X:Z

    return-void
.end method


# virtual methods
.method public final A0(I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->D:I

    return-void
.end method

.method public final B0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    return-void
.end method

.method public final C0(J)V
    .locals 0

    iput-wide p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->k:J

    return-void
.end method

.method public final D()V
    .locals 5

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/collections/o;->d0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo2/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo2/a;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-string v2, "addLastTranslate exist"

    const-string v3, "SimultaneousMainViewModel"

    if-nez v1, :cond_0

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lo2/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lo2/a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->b0()Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/translate/ui/simultaneous/utils/f;->i(Lo2/a;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0, v3, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final D0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->F:Z

    return-void
.end method

.method public final E0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->H:Z

    return-void
.end method

.method public final F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    return-void
.end method

.method public final G0(Z)V
    .locals 0

    sput-boolean p1, Lcom/coloros/translate/ui/simultaneous/main/m;->Y:Z

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->h:Z

    return-void
.end method

.method public final H()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "SimultaneousMainViewModel"

    const-string v2, "destroyAsr"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->N0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->h()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->r:Landroidx/lifecycle/a0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->R:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->g:Z

    return-void
.end method

.method public final I0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->j:Z

    return-void
.end method

.method public final J(JLjava/lang/String;Z)Ln8/q;
    .locals 32

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    const-string v4, "rId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v4}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_0
    const-string v6, "SimultaneousMainViewModel"

    const/4 v7, -0x1

    if-ge v7, v5, :cond_1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo2/a;

    invoke-virtual {v7}, Lo2/a;->d()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-nez v8, :cond_0

    invoke-virtual {v7}, Lo2/a;->f()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v7}, Lo2/a;->d()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findConversationById update:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v7, v0}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v0

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    if-nez p4, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v4, Lo2/a;

    move-object v7, v4

    const v30, 0x1ffff

    const/16 v31, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v7 .. v31}, Lo2/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZZZZZIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4, v1, v2}, Lo2/a;->u(J)V

    invoke-virtual {v4, v3}, Lo2/a;->w(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->U()Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo2/a;->p(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->U()Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/engine/info/AsrParams;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lo2/a;->y(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v1}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4}, Lo2/a;->d()J

    move-result-wide v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findConversationById add item:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  msgId="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v0}, Ln8/w;->a(Ljava/lang/Object;Ljava/lang/Object;)Ln8/q;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final J0(Z)V
    .locals 6

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->s()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    iget-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    iget-boolean v3, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAsr isAsRunning:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isRecordFile:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isInitAsrFile:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " force:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->x:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->x0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->w:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->x:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/coloros/translate/ui/simultaneous/main/m;->E(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->u0()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->m()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->q()V

    sget-object v0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->w:Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/coloros/translate/utils/n;->b0(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->n()V

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAsr error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->R:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->R:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->Q:Ljava/lang/Runnable;

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->r:Landroidx/lifecycle/a0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/base/q;->h(Z)Z

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "asr onStart"

    invoke-virtual {p1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method

.method public final L0()V
    .locals 5

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAsr isAsrRuning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->R:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->Q:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->k()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->s0()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->r:Landroidx/lifecycle/a0;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->I()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr onStop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->c()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "asr onStop tts isPlaying:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/coloros/translate/base/q;->h(Z)Z

    :cond_1
    return-void
.end method

.method public final M()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->i:Z

    return p0
.end method

.method public final M0()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    return-void
.end method

.method public final N()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->G:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final O0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "fromLanguageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguageCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLanguage fl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->w:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->x:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->z:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->A:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "updateLanguage language same reject"

    invoke-virtual {v0, v2, p0}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    if-eqz p1, :cond_1

    const-string p1, "updateLanguage startAsr"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->J0(Z)V

    :cond_1
    return-void
.end method

.method public final P()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->K:Z

    return p0
.end method

.method public final Q()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->p:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final R()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    return p0
.end method

.method public final S()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->o:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final T()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->q:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final V()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final W()I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->u:I

    return p0
.end method

.method public final X()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->r:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final a0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->C:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final c0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->v:Z

    return p0
.end method

.method protected d()V
    .locals 10

    invoke-super {p0}, Lcom/coloros/translate/base/q;->d()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->g:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCleared before isSaveFinish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->g:Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo2/a;

    invoke-virtual {v5}, Lo2/a;->d()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v4

    :goto_1
    sget-object v5, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    sget-boolean v6, Lcom/coloros/translate/ui/simultaneous/main/m;->Y:Z

    iget-object v7, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[onCleared] hasTxt:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mIsRecordMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSaveData:"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v5, Lcom/coloros/translate/ui/simultaneous/main/m;->Y:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->w0()V

    :cond_3
    invoke-virtual {p0}, Landroidx/lifecycle/a;->e()Landroid/app/Application;

    move-result-object v0

    sget v5, Lcom/coloros/translate/R$string;->simultaneous_save_title:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "getString(...)"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {v0, v4, v5, v3}, Lcom/coloros/translate/utils/w;->i(Ljava/lang/String;IILjava/lang/Object;)V

    :cond_4
    sput-boolean v4, Lcom/coloros/translate/ui/simultaneous/main/m;->X:Z

    sput-boolean v4, Lcom/coloros/translate/ui/simultaneous/main/m;->Y:Z

    :cond_5
    invoke-static {p0, v3, v1, v3}, Lcom/coloros/translate/ui/simultaneous/main/m;->G(Lcom/coloros/translate/ui/simultaneous/main/m;Ljava/lang/String;ILjava/lang/Object;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "onCleared after"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->s()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->b0()Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/utils/f;->f()V

    return-void
.end method

.method public final d0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->E:Z

    return p0
.end method

.method public final e0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->s:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final g0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "fromLanguageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toLanguageCode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->z:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->A:Ljava/lang/String;

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h0()Z
    .locals 2

    iget v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->D:I

    sget-object v1, Lcom/coloros/translate/repository/b;->SILENCE_TIMEOUT:Lcom/coloros/translate/repository/b;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->E:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final i0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->F:Z

    return p0
.end method

.method public j()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusLost "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {v0}, Lcom/coloros/translate/repository/d$a;->e()Lcom/coloros/translate/repository/remote/c;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->c0()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->x()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/repository/remote/TtsEngineHandler;->g()V

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/c;->v()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->r()V

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->L0()V

    sget p0, Lcom/coloros/translate/R$string;->translate_pause:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/coloros/translate/utils/w;->h(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final j0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->H:Z

    return p0
.end method

.method public k()V
    .locals 9

    invoke-super {p0}, Lcom/coloros/translate/base/q;->k()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/coloros/translate/ui/simultaneous/main/m;->X:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->E:Z

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v3, "simultaneous_auto_play"

    const/4 v5, 0x0

    move-object v2, v1

    move-object v4, v8

    invoke-static/range {v2 .. v7}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->F:Z

    const-string v3, "simultaneous_record_switch"

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    new-instance v1, Lcom/coloros/translate/ui/simultaneous/main/m$f;

    invoke-direct {v1, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$f;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    const/4 p0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v1, v0, p0}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainViewModel"

    const-string v1, "onViewModeCreate"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final k0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    return p0
.end method

.method public final l0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->h:Z

    return p0
.end method

.method public final m0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->m:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final n0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->j:Z

    return p0
.end method

.method public final o0()Landroidx/lifecycle/a0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->t:Landroidx/lifecycle/a0;

    return-object p0
.end method

.method public final p0()Z
    .locals 2

    iget v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->D:I

    sget-object v1, Lcom/coloros/translate/repository/b;->TRANSLATION_SERVICE_DIED:Lcom/coloros/translate/repository/b;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/b;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->E:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final q0(Z)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->F:Z

    const-string v3, "SimultaneousMainViewModel"

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->H:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->m:Landroidx/lifecycle/a0;

    invoke-virtual {v2}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    iget-boolean v5, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playTts isOnceTtsStop:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " nextTts:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v4

    :cond_2
    :goto_0
    iput-boolean v4, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    iget-object v1, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Z()Lcom/coloros/translate/repository/remote/TtsEngineHandler;

    move-result-object v5

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/main/g0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/coloros/translate/engine/info/TtsParams;

    iget-object v9, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->x:Ljava/lang/String;

    const/16 v16, 0xfd

    const/16 v17, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Lcom/coloros/translate/engine/info/TtsParams;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v8, Lcom/coloros/translate/ui/simultaneous/main/m$g;

    invoke-direct {v8, v0}, Lcom/coloros/translate/ui/simultaneous/main/m$g;-><init>(Lcom/coloros/translate/ui/simultaneous/main/m;)V

    const/16 v10, 0x8

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v5 .. v11}, Lcom/coloros/translate/repository/remote/a$a;->a(Lcom/coloros/translate/repository/remote/a;Ljava/lang/String;Lcom/coloros/translate/engine/info/TtsParams;Lcom/coloros/translate/repository/remote/TtsEngineHandler$TtsListener;Landroid/os/Bundle;ILjava/lang/Object;)V

    return v2

    :cond_4
    :goto_1
    iput-boolean v2, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->V:Z

    return v4

    :cond_5
    :goto_2
    iget-object v0, v0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "playTts clear"

    invoke-virtual {v0, v3, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public final t0(Lo2/a;ZZ)V
    .locals 3

    const-string v0, "conversation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshItem isShowTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " create:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "SimultaneousMainViewModel"

    invoke-virtual {v0, v1, p2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/ui/simultaneous/main/m;->L(Lo2/a;)I

    move-result p1

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->p:Landroidx/lifecycle/a0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->o:Landroidx/lifecycle/a0;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/a0;->k(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final v0()V
    .locals 2

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->Y()Lcom/coloros/translate/repository/remote/RtasrEngineHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/repository/remote/RtasrEngineHandler;->s()V

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->y:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coloros/translate/ui/simultaneous/main/m;->F(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-sensitive"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->y:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->k:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->D:I

    iput-boolean v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->S:Z

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->I:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->b0()Lcom/coloros/translate/ui/simultaneous/utils/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/utils/f;->h()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "SimultaneousMainViewModel"

    const-string v1, "resetCallId"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final w0()V
    .locals 11

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->J:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v1, Lcom/coloros/translate/repository/local/SimultaneousHistory;

    invoke-direct {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteId(J)V

    invoke-virtual {p0}, Landroidx/lifecycle/a;->e()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcom/coloros/translate/R$string;->note_title_default:I

    iget v6, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->P:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setNoteTitle(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const-string v4, "insert audio file"

    invoke-virtual {v0, v2, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->O()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v5, v0, v3, v5}, Lcom/coloros/translate/ui/simultaneous/utils/b;->c(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Ln8/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v1, v4}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioFile(Ljava/lang/String;)V

    invoke-virtual {v0}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setAudioTime(J)V

    :cond_1
    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->n:Landroidx/lifecycle/a0;

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lo2/a;

    invoke-virtual {v9}, Lo2/a;->d()J

    move-result-wide v9

    cmp-long v9, v9, v6

    if-eqz v9, :cond_2

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/o;->r(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo2/a;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getNoteId()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lo2/a;->C(J)Lcom/coloros/translate/repository/local/SimultaneousSentence;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    move-object v0, v5

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-boolean v4, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->l:Z

    if-nez v4, :cond_7

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "saveData empty reject"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_7
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/coloros/translate/repository/local/SimultaneousSentence;

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getSimpleText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/coloros/translate/repository/local/SimultaneousSentence;->getToText()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->setSimpleText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/coloros/translate/repository/local/SimultaneousHistory;->getSimpleText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    goto :goto_3

    :cond_8
    if-eqz v0, :cond_a

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_4

    :cond_9
    new-instance v2, Lcom/coloros/translate/ui/simultaneous/main/m$h;

    invoke-direct {v2, v1, v0, p0}, Lcom/coloros/translate/ui/simultaneous/main/m$h;-><init>(Lcom/coloros/translate/repository/local/SimultaneousHistory;Ljava/util/List;Lcom/coloros/translate/ui/simultaneous/main/m;)V

    invoke-static {v6, v7, v2, v3, v5}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    return-void

    :cond_a
    :goto_4
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "saveData second reject"

    invoke-virtual {p0, v2, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final y0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->E:Z

    return-void
.end method

.method public final z0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coloros/translate/ui/simultaneous/main/m;->i:Z

    return-void
.end method
