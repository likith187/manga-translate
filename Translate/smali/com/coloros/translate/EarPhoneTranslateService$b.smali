.class public final Lcom/coloros/translate/EarPhoneTranslateService$b;
.super Lcom/coloros/translate/engine/IEarphoneTranslateBinder$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/EarPhoneTranslateService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Lcom/coloros/translate/engine/IEarBinderCallback;

.field private final b:Landroid/os/IBinder$DeathRecipient;

.field final synthetic c:Lcom/coloros/translate/EarPhoneTranslateService;


# direct methods
.method constructor <init>(Lcom/coloros/translate/EarPhoneTranslateService;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->c:Lcom/coloros/translate/EarPhoneTranslateService;

    invoke-direct {p0}, Lcom/coloros/translate/engine/IEarphoneTranslateBinder$Stub;-><init>()V

    new-instance p1, Lcom/coloros/translate/a;

    invoke-direct {p1}, Lcom/coloros/translate/a;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->b:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lcom/coloros/translate/EarPhoneTranslateService$b;->b()V

    return-void
.end method

.method private static final b()V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "EarPhoneTranslateService"

    const-string v2, "deathRecipient died"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public changeMicState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "EarPhoneTranslateService"

    const-string v1, "changeMicState"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->c:Lcom/coloros/translate/EarPhoneTranslateService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/coloros/translate/EarPhoneTranslateService;->d(Lcom/coloros/translate/EarPhoneTranslateService;I)V

    iget-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->c:Lcom/coloros/translate/EarPhoneTranslateService;

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/coloros/translate/EarPhoneTranslateService;->e(Lcom/coloros/translate/EarPhoneTranslateService;I)V

    iget-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->c:Lcom/coloros/translate/EarPhoneTranslateService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Ln0/a;->b(Landroid/content/Context;)Ln0/a;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.oplus.translate.conversation.foreground"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->c:Lcom/coloros/translate/EarPhoneTranslateService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "earBinder"

    invoke-static {v1}, Lcom/coloros/translate/EarPhoneTranslateService;->a(Lcom/coloros/translate/EarPhoneTranslateService;)Lcom/coloros/translate/EarPhoneTranslateService$c;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Ln0/a;->e(Landroid/content/Intent;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->c:Lcom/coloros/translate/EarPhoneTranslateService;

    sget-object v0, Lm2/a;->INSTANCE:Lm2/a;

    invoke-virtual {v0}, Lm2/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/coloros/translate/EarPhoneTranslateService;->b(Lcom/coloros/translate/EarPhoneTranslateService;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lm2/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/coloros/translate/EarPhoneTranslateService;->c(Lcom/coloros/translate/EarPhoneTranslateService;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method public getApiVersion()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public registerCallBack(Lcom/coloros/translate/engine/IEarBinderCallback;)V
    .locals 7

    iget-object v0, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->a:Lcom/coloros/translate/engine/IEarBinderCallback;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "registerCallBack"

    const-string v2, "EarPhoneTranslateService"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Ln8/r;->Companion:Ln8/r$a;

    iget-object v3, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->a:Lcom/coloros/translate/engine/IEarBinderCallback;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->b:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-static {v3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v4, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {v3}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_2
    invoke-static {v3}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v4, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unlinkToDeath "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-object p1, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->a:Lcom/coloros/translate/engine/IEarBinderCallback;

    if-eqz p1, :cond_3

    :try_start_1
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/coloros/translate/EarPhoneTranslateService$b;->b:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    sget-object v0, Ln8/h0;->INSTANCE:Ln8/h0;

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    invoke-static {v0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_5
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "linkToDeath "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
