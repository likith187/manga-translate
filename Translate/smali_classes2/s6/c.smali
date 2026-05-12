.class public Ls6/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Ls6/c;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;Lcom/oplus/epona/Response;)V
    .locals 1

    const-string v0, "Caller(%s) call component(%s) action(%s) response:(%s)"

    filled-new-array {p0, p1, p2, p4}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Epona->CallProviderInterceptor"

    invoke-static {p1, v0, p0}, Lc8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3, p4}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/epona/f$a;)V
    .locals 7

    const-string p0, "Epona->CallProviderInterceptor"

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->a()Lcom/oplus/epona/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getCallerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/oplus/epona/d;->f(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->callback()Lcom/oplus/epona/Call$Callback;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0}, Lcom/oplus/epona/Request;->getActionName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/oplus/epona/f$a;->c()Z

    move-result p1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v3, v5}, Lcom/oplus/epona/provider/ProviderInfo;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance v3, Ls6/b;

    invoke-direct {v3, v2, v1, v5, v4}, Ls6/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/epona/Call$Callback;)V

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/oplus/epona/provider/ProviderInfo;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/epona/Response;

    const-string v0, "Caller(%s) call component(%s) action(%s) response:(%s)"

    filled-new-array {v2, v1, v5, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lc8/a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v4, p1}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "InvocationTargetException happened with component(%s) Exception: %s"

    invoke-static {p0, v2, v0}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "fail to run static provider with componentName(%s) cause: %s "

    invoke-static {p0, v2, v0}, Lc8/a;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Response;->c(Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object p0

    :goto_1
    invoke-interface {v4, p0}, Lcom/oplus/epona/Call$Callback;->onReceive(Lcom/oplus/epona/Response;)V

    :goto_2
    return-void

    :cond_2
    invoke-interface {p1}, Lcom/oplus/epona/f$a;->b()V

    return-void
.end method
