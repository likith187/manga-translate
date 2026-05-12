.class public final Lg2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg2/a$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lg2/a;

.field private static a:Landroid/telephony/TelephonyManager;

.field private static b:Landroid/telephony/TelephonyCallback;

.field private static final c:Ljava/util/List;

.field private static d:I

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg2/a;

    invoke-direct {v0}, Lg2/a;-><init>()V

    sput-object v0, Lg2/a;->INSTANCE:Lg2/a;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lg2/a;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lg2/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lg2/a;->d(I)V

    return-void
.end method

.method public static final synthetic b(I)V
    .locals 0

    sput p0, Lg2/a;->d:I

    return-void
.end method

.method public static final c()V
    .locals 5

    sget-boolean v0, Lg2/a;->e:Z

    const-string v1, "PhoneStateManager"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "initPhoneStateListener: already initialized"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lg2/a;->INSTANCE:Lg2/a;

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    sget-object v2, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v2}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/telephony/TelephonyManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    sput-object v3, Lg2/a;->a:Landroid/telephony/TelephonyManager;

    if-nez v3, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "initPhoneStateListener: TelephonyManager is null"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    sput v3, Lg2/a;->d:I

    new-instance v3, Lg2/a$b;

    invoke-direct {v3, v0}, Lg2/a$b;-><init>(Lg2/a;)V

    sput-object v3, Lg2/a;->b:Landroid/telephony/TelephonyCallback;

    sget-object v0, Lg2/a;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_4
    const/4 v0, 0x1

    sput-boolean v0, Lg2/a;->e:Z

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v2, "initPhoneStateListener: success"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "initPhoneStateListener error: "

    invoke-virtual {v2, v1, v3, v0}, Lcom/coloros/translate/utils/c0$a;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method private final d(I)V
    .locals 1

    sget-object p0, Lg2/a;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg2/a$a;

    invoke-interface {v0, p1}, Lg2/a$a;->onCallStateChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final e(Lg2/a$a;)V
    .locals 2

    const-string v0, "callBack"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lg2/a;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Lg2/a;->d:I

    invoke-interface {p0, v0}, Lg2/a$a;->onCallStateChanged(I)V

    :cond_0
    return-void
.end method

.method public static final f(Lg2/a$a;)V
    .locals 2

    sget-object v0, Lg2/a;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lkotlin/collections/o;->M(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/i0;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
