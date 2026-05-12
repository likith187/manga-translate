.class public Lcom/oplus/utils/reflect/RefMethod;
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
.field private static final TAG:Ljava/lang/String; = "RefMethod"


# instance fields
.field private final mMethod:Ljava/lang/reflect/Method;


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

    invoke-direct {p0, p1, p2}, Lcom/oplus/utils/reflect/RefMethod;->load(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utils/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method private getMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, p4, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method static getProtoType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_0
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_1
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_2
    const-string v0, "byte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_3
    const-string v0, "short"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_4
    const-string v0, "char"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_5
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_6
    const-string v0, "double"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_7
    const-string v0, "void"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private load(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    const/4 v0, 0x1

    const-class v1, Lcom/oplus/utils/reflect/MethodName;

    const-string v2, "RefMethod"

    const-class v3, Lcom/oplus/utils/reflect/MethodSignature;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/oplus/utils/reflect/MethodName;

    invoke-interface {v3}, Lcom/oplus/utils/reflect/MethodName;->params()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/reflect/MethodName;

    invoke-interface {v1}, Lcom/oplus/utils/reflect/MethodName;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v3, v1}, Lcom/oplus/utils/reflect/RefMethod;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto/16 :goto_a

    :catch_0
    move-exception p0

    goto/16 :goto_9

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_8

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/reflect/MethodSignature;

    invoke-interface {v1}, Lcom/oplus/utils/reflect/MethodSignature;->params()[Ljava/lang/String;

    move-result-object v1

    array-length v6, v1

    new-array v6, v6, [Ljava/lang/Class;

    array-length v7, v1

    new-array v7, v7, [Ljava/lang/Class;

    move v8, v5

    move v9, v8

    :goto_0
    array-length v10, v1

    if-ge v8, v10, :cond_4

    aget-object v10, v1, v8

    invoke-static {v10}, Lcom/oplus/utils/reflect/RefMethod;->getProtoType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v10, :cond_1

    :try_start_1
    aget-object v11, v1, v8

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v11

    :try_start_2
    invoke-virtual {v11}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    aput-object v10, v6, v8

    const-string v11, "java.util.HashSet"

    aget-object v12, v1, v8

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v11, :cond_3

    :try_start_3
    const-string v9, "android.util.ArraySet"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_2
    move-exception v9

    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v10

    :goto_2
    if-eqz v9, :cond_2

    aput-object v9, v7, v8

    goto :goto_3

    :cond_2
    aput-object v10, v7, v8

    :goto_3
    move v9, v0

    goto :goto_4

    :cond_3
    aput-object v10, v7, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    add-int/2addr v8, v0

    goto :goto_0

    :cond_4
    :try_start_5
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lcom/oplus/utils/reflect/MethodSignature;

    invoke-interface {v8}, Lcom/oplus/utils/reflect/MethodSignature;->name()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, p2, v6, v8}, Lcom/oplus/utils/reflect/RefMethod;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v6

    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_5

    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/oplus/utils/reflect/MethodSignature;

    invoke-interface {v6}, Lcom/oplus/utils/reflect/MethodSignature;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, p2, v7, v6}, Lcom/oplus/utils/reflect/RefMethod;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    :cond_5
    :goto_5
    array-length v6, v1

    new-array v6, v6, [Ljava/lang/Class;

    :goto_6
    array-length v7, v1

    if-ge v5, v7, :cond_7

    aget-object v7, v1, v5

    invoke-static {v7}, Lcom/oplus/utils/reflect/RefMethod;->getProtoType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v7, :cond_6

    :try_start_7
    aget-object v8, v1, v5

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :catch_4
    move-exception v8

    :try_start_8
    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    aput-object v7, v6, v5

    add-int/2addr v5, v0

    goto :goto_6

    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/oplus/utils/reflect/MethodSignature;

    invoke-interface {v1}, Lcom/oplus/utils/reflect/MethodSignature;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v6, v1}, Lcom/oplus/utils/reflect/RefMethod;->getMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;[Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_a

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length p1, p0

    :goto_8
    if-ge v5, p1, :cond_a

    aget-object v1, p0, v5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    move-object v4, v1

    goto :goto_a

    :catch_5
    move-exception p0

    move-object v4, v1

    goto :goto_9

    :cond_9
    add-int/2addr v5, v0

    goto :goto_8

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_a
    return-object v4
.end method


# virtual methods
.method public bridge synthetic bindStub(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oplus/utils/reflect/BaseRef;->bindStub(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs call(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/oplus/utils/reflect/RefMethod;->callWithDefault(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs callWithDefault(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/oplus/utils/reflect/RefMethod;->callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p1

    const-string p3, "RefMethod"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/utils/reflect/BaseRef;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public varargs callWithException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/oplus/utils/reflect/BaseRef;->checkStub(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/utils/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0
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

    invoke-virtual {p0}, Lcom/oplus/utils/reflect/RefMethod;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/utils/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

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

    iget-object p0, p0, Lcom/oplus/utils/reflect/RefMethod;->mMethod:Ljava/lang/reflect/Method;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
