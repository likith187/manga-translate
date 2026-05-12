.class public Lcom/oplus/utils/reflect/RefConstructor;
.super Lcom/oplus/utils/reflect/BaseRef;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oplus/utils/reflect/BaseRef<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RefConstructor"


# instance fields
.field private final mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/oplus/utils/reflect/BaseRef;-><init>(Ljava/lang/reflect/Field;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/utils/reflect/RefConstructor;->load(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utils/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method private load(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    const-string p0, "RefConstructor"

    const-class v0, Lcom/oplus/utils/reflect/MethodSignature;

    const-class v1, Lcom/oplus/utils/reflect/MethodName;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/oplus/utils/reflect/MethodName;

    invoke-interface {p2}, Lcom/oplus/utils/reflect/MethodName;->params()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    :goto_0
    move-object v2, p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/oplus/utils/reflect/MethodSignature;

    invoke-interface {p2}, Lcom/oplus/utils/reflect/MethodSignature;->params()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_1
    array-length v3, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v1, v3, :cond_1

    :try_start_1
    aget-object v3, p2, v1

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    goto :goto_0

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    return-object v2
.end method

.method private printCauseMessage(Ljava/lang/reflect/InvocationTargetException;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v0, "RefConstructor"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic bindStub(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oplus/utils/reflect/BaseRef;->bindStub(Ljava/lang/Object;)V

    return-void
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/utils/reflect/RefConstructor;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/utils/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/oplus/utils/reflect/BaseRef;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/oplus/utils/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/oplus/utils/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 2
    :goto_0
    const-string v1, "RefConstructor"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3
    :goto_1
    invoke-direct {p0, v1}, Lcom/oplus/utils/reflect/RefConstructor;->printCauseMessage(Ljava/lang/reflect/InvocationTargetException;)V

    :goto_2
    return-object v0
.end method

.method public varargs newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/oplus/utils/reflect/RefConstructor;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 5
    :goto_0
    const-string p1, "RefConstructor"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 6
    :goto_1
    invoke-direct {p0, p1}, Lcom/oplus/utils/reflect/RefConstructor;->printCauseMessage(Ljava/lang/reflect/InvocationTargetException;)V

    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
