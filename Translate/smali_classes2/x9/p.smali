.class Lx9/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx9/p$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/util/Map;

.field private static final e:[Lx9/p$a;


# instance fields
.field private a:Ljava/util/List;

.field private final b:Z

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lx9/p;->d:Ljava/util/Map;

    const/4 v0, 0x4

    new-array v0, v0, [Lx9/p$a;

    sput-object v0, Lx9/p;->e:[Lx9/p$a;

    return-void
.end method

.method constructor <init>(Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx9/p;->a:Ljava/util/List;

    iput-boolean p2, p0, Lx9/p;->b:Z

    iput-boolean p3, p0, Lx9/p;->c:Z

    return-void
.end method

.method private b(Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lx9/p;->g()Lx9/p$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx9/p$a;->c(Ljava/lang/Class;)V

    :goto_0
    iget-object p1, v0, Lx9/p$a;->f:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lx9/p;->f(Lx9/p$a;)Lz9/a;

    invoke-direct {p0, v0}, Lx9/p;->d(Lx9/p$a;)V

    invoke-virtual {v0}, Lx9/p$a;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lx9/p;->e(Lx9/p$a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Lx9/p;->g()Lx9/p$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lx9/p$a;->c(Ljava/lang/Class;)V

    :goto_0
    iget-object p1, v0, Lx9/p$a;->f:Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lx9/p;->d(Lx9/p$a;)V

    invoke-virtual {v0}, Lx9/p$a;->d()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lx9/p;->e(Lx9/p$a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private d(Lx9/p$a;)V
    .locals 14

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p1, Lx9/p$a;->f:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_1
    iget-object v1, p1, Lx9/p$a;->f:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    iput-boolean v0, p1, Lx9/p$a;->g:Z

    :goto_0
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_5

    aget-object v6, v1, v4

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    const-string v8, "."

    const-class v9, Lx9/m;

    if-eqz v7, :cond_2

    and-int/lit16 v5, v5, 0x1448

    if-nez v5, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v7, v5

    if-ne v7, v0, :cond_0

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lx9/m;

    if-eqz v7, :cond_4

    aget-object v8, v5, v3

    invoke-virtual {p1, v6, v8}, Lx9/p$a;->a(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Lx9/m;->threadMode()Lorg/greenrobot/eventbus/ThreadMode;

    move-result-object v9

    iget-object v11, p1, Lx9/p$a;->a:Ljava/util/List;

    new-instance v12, Lx9/o;

    invoke-interface {v7}, Lx9/m;->priority()I

    move-result v10

    invoke-interface {v7}, Lx9/m;->sticky()Z

    move-result v13

    move-object v5, v12

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v5 .. v10}, Lx9/o;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Class;Lorg/greenrobot/eventbus/ThreadMode;IZ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v7, p0, Lx9/p;->b:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lx9/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@Subscribe method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "must have exactly 1 parameter but has "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v5

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lx9/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-boolean v5, p0, Lx9/p;->b:Z

    if-eqz v5, :cond_4

    invoke-virtual {v6, v9}, Ljava/lang/reflect/AccessibleObject;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lx9/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is a illegal @Subscribe method: must be public, non-static, and non-abstract"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lx9/e;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not inspect methods of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lx9/p$a;->f:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean p0, p0, Lx9/p;->c:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please consider using EventBus annotation processor to avoid reflection."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Please make this class visible to EventBus annotation processor to avoid reflection."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p1, Lx9/e;

    invoke-direct {p1, p0, v0}, Lx9/e;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private e(Lx9/p$a;)Ljava/util/List;
    .locals 4

    new-instance p0, Ljava/util/ArrayList;

    iget-object v0, p1, Lx9/p$a;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lx9/p$a;->e()V

    sget-object v0, Lx9/p;->e:[Lx9/p$a;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    :try_start_0
    sget-object v2, Lx9/p;->e:[Lx9/p$a;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    aput-object p1, v2, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private f(Lx9/p$a;)Lz9/a;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lx9/p;->a:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private g()Lx9/p$a;
    .locals 4

    sget-object p0, Lx9/p;->e:[Lx9/p$a;

    monitor-enter p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    :try_start_0
    sget-object v1, Lx9/p;->e:[Lx9/p$a;

    aget-object v2, v1, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Lx9/p$a;

    invoke-direct {p0}, Lx9/p$a;-><init>()V

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method a(Ljava/lang/Class;)Ljava/util/List;
    .locals 2

    sget-object v0, Lx9/p;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-boolean v1, p0, Lx9/p;->c:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lx9/p;->c(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lx9/p;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Lx9/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Subscriber "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and its super classes have no public methods with the @Subscribe annotation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lx9/e;-><init>(Ljava/lang/String;)V

    throw p0
.end method
