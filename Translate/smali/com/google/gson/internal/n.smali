.class public abstract Lcom/google/gson/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/gson/internal/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/gson/internal/n;->c()Lcom/google/gson/internal/n;

    move-result-object v0

    sput-object v0, Lcom/google/gson/internal/n;->INSTANCE:Lcom/google/gson/internal/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0}, Lcom/google/gson/internal/n;->b(Ljava/lang/Class;)V

    return-void
.end method

.method private static b(Ljava/lang/Class;)V
    .locals 3

    invoke-static {p0}, Lcom/google/gson/internal/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsafeAllocator is used for non-instantiable type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static c()Lcom/google/gson/internal/n;
    .locals 9

    const-string v0, "newInstance"

    const-class v1, Ljava/io/ObjectStreamClass;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "sun.misc.Unsafe"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "theUnsafe"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "allocateInstance"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-instance v7, Lcom/google/gson/internal/n$a;

    invoke-direct {v7, v5, v6}, Lcom/google/gson/internal/n$a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    :try_start_1
    const-string v5, "getConstructorId"

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-class v6, Ljava/lang/Object;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2, v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v5, Lcom/google/gson/internal/n$b;

    invoke-direct {v5, v1, v3}, Lcom/google/gson/internal/n$b;-><init>(Ljava/lang/reflect/Method;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v5

    :catch_1
    :try_start_2
    const-class v1, Ljava/io/ObjectInputStream;

    filled-new-array {v2, v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-instance v1, Lcom/google/gson/internal/n$c;

    invoke-direct {v1, v0}, Lcom/google/gson/internal/n$c;-><init>(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v1

    :catch_2
    new-instance v0, Lcom/google/gson/internal/n$d;

    invoke-direct {v0}, Lcom/google/gson/internal/n$d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract d(Ljava/lang/Class;)Ljava/lang/Object;
.end method
