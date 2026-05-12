.class public Lcom/oplus/epona/provider/ProviderInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mMethodCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private mMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/provider/ProviderMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNeedIPC:Z

.field private mNeedLog:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/epona/provider/ProviderMethodInfo;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethodCache:Ljava/util/Map;

    iput-object p1, p0, Lcom/oplus/epona/provider/ProviderInfo;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/epona/provider/ProviderInfo;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/oplus/epona/provider/ProviderInfo;->mNeedIPC:Z

    iput-boolean p5, p0, Lcom/oplus/epona/provider/ProviderInfo;->mNeedLog:Z

    return-void
.end method

.method private params([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length p0, p1

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length p0, p1

    new-array v0, p0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public containsAction(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 3

    iget-object v0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethodCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/epona/provider/ProviderMethodInfo;

    :try_start_0
    iget-object v1, p0, Lcom/oplus/epona/provider/ProviderInfo;->mClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oplus/epona/provider/ProviderMethodInfo;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oplus/epona/provider/ProviderMethodInfo;->getMethodParams()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/epona/provider/ProviderInfo;->params([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethodCache:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMethodInfo(Ljava/lang/String;)Lcom/oplus/epona/provider/ProviderMethodInfo;
    .locals 0

    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mMethods:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/provider/ProviderMethodInfo;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public needIPC()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mNeedIPC:Z

    return p0
.end method

.method public needLog()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oplus/epona/provider/ProviderInfo;->mNeedLog:Z

    return p0
.end method
