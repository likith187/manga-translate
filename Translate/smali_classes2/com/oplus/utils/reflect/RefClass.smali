.class public final Lcom/oplus/utils/reflect/RefClass;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final REF_CLASSES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;"
        }
    .end annotation
.end field

.field private static final REF_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RefClass"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/utils/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    const-class v10, Lcom/oplus/utils/reflect/RefShort;

    const-class v11, Lcom/oplus/utils/reflect/RefConstructor;

    const-class v1, Lcom/oplus/utils/reflect/RefObject;

    const-class v2, Lcom/oplus/utils/reflect/RefMethod;

    const-class v3, Lcom/oplus/utils/reflect/RefInt;

    const-class v4, Lcom/oplus/utils/reflect/RefLong;

    const-class v5, Lcom/oplus/utils/reflect/RefFloat;

    const-class v6, Lcom/oplus/utils/reflect/RefDouble;

    const-class v7, Lcom/oplus/utils/reflect/RefBoolean;

    const-class v8, Lcom/oplus/utils/reflect/RefByte;

    const-class v9, Lcom/oplus/utils/reflect/RefChar;

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oplus/utils/reflect/RefClass;->REF_CLASSES:[Ljava/lang/Class;

    :try_start_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lcom/oplus/utils/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    const-class v5, Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    filled-new-array {v5, v6}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RefClass"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getRealClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find class : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RefClass"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "*>;"
        }
    .end annotation

    if-eqz p0, :cond_a

    .line 8
    const-string v0, "RefClass"

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 9
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ".newInstance"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object v2, v1

    .line 11
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 12
    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    :goto_1
    if-ge v5, v4, :cond_9

    aget-object v7, v3, v5

    .line 13
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v8, 0x1

    .line 14
    :try_start_1
    invoke-virtual {v7, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 15
    invoke-virtual {v7, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_7

    .line 16
    sget-object v8, Lcom/oplus/utils/reflect/RefClass;->REF_TYPES:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Constructor;

    if-eqz v8, :cond_8

    if-eqz p1, :cond_2

    .line 17
    invoke-static {p1, v7, v8}, Lcom/oplus/utils/reflect/RefClass;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;

    move-result-object v9

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_3

    :cond_2
    move-object v9, v1

    :goto_2
    if-eqz v9, :cond_3

    .line 18
    invoke-interface {v9}, Lcom/oplus/utils/reflect/IBaseRef;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    if-eq p1, p2, :cond_4

    .line 19
    invoke-static {p2, v7, v8}, Lcom/oplus/utils/reflect/RefClass;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_5

    .line 20
    invoke-static {v1, v7, v8}, Lcom/oplus/utils/reflect/RefClass;->newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;

    move-result-object v9

    :cond_5
    if-eqz v9, :cond_6

    .line 21
    invoke-interface {v9, v2}, Lcom/oplus/utils/reflect/IBaseRef;->bindStub(Ljava/lang/Object;)V

    .line 22
    :cond_6
    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 24
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/oplus/utils/reflect/RefConstructor;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 25
    check-cast v9, Lcom/oplus/utils/reflect/RefConstructor;

    move-object v6, v9

    goto :goto_4

    .line 26
    :cond_7
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Already loaded : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".load"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    return-object v6

    .line 28
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mappingClass is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "*>;"
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/utils/reflect/RefClass;->getRealClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 7
    invoke-static {p0, p1, p2, p3}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;

    return-object p1
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oplus/utils/reflect/RefClass;->getRealClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, p1, p2, v0}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/oplus/utils/reflect/RefConstructor;

    return-object p1
.end method

.method private static newInstance(Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Constructor;)Lcom/oplus/utils/reflect/IBaseRef;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/oplus/utils/reflect/IBaseRef;",
            ">;)",
            "Lcom/oplus/utils/reflect/IBaseRef;"
        }
    .end annotation

    :try_start_0
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/utils/reflect/IBaseRef;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "RefClass"

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "targetClass load : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "targetClass load : null"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
