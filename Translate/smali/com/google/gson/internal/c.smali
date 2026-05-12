.class public final Lcom/google/gson/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Z

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/google/gson/internal/c;->b:Z

    iput-object p3, p0, Lcom/google/gson/internal/c;->c:Ljava/util/List;

    return-void
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interfaces can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abstract classes can\'t be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Class name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static c(Ljava/lang/Class;Lcom/google/gson/s;)Lcom/google/gson/internal/i;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, Lcom/google/gson/s;->ALLOW:Lcom/google/gson/s;

    if-eq p1, v2, :cond_2

    invoke-static {v0, v1}, Lcom/google/gson/internal/l;->a(Ljava/lang/reflect/AccessibleObject;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/gson/s;->BLOCK_ALL:Lcom/google/gson/s;

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to invoke no-args constructor of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; constructor is not accessible and ReflectionAccessFilter does not permit making it accessible. Register an InstanceCreator or a TypeAdapter for this type, change the visibility of the constructor or adjust the access filter."

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/gson/internal/c$p;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/c$p;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_0
    if-ne p1, v2, :cond_3

    invoke-static {v0}, Ly4/a;->m(Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    new-instance p1, Lcom/google/gson/internal/c$q;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/c$q;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Lcom/google/gson/internal/c$r;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/c$r;-><init>(Ljava/lang/reflect/Constructor;)V

    return-object p0

    :catch_0
    return-object v1
.end method

.method private static d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/i;
    .locals 1

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-class p0, Ljava/util/SortedSet;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/gson/internal/c$a;

    invoke-direct {p0}, Lcom/google/gson/internal/c$a;-><init>()V

    return-object p0

    :cond_0
    const-class p0, Ljava/util/Set;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/google/gson/internal/c$b;

    invoke-direct {p0}, Lcom/google/gson/internal/c$b;-><init>()V

    return-object p0

    :cond_1
    const-class p0, Ljava/util/Queue;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/google/gson/internal/c$c;

    invoke-direct {p0}, Lcom/google/gson/internal/c$c;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/google/gson/internal/c$d;

    invoke-direct {p0}, Lcom/google/gson/internal/c$d;-><init>()V

    return-object p0

    :cond_3
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p0, Lcom/google/gson/internal/c$e;

    invoke-direct {p0}, Lcom/google/gson/internal/c$e;-><init>()V

    return-object p0

    :cond_4
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p0, Lcom/google/gson/internal/c$f;

    invoke-direct {p0}, Lcom/google/gson/internal/c$f;-><init>()V

    return-object p0

    :cond_5
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p0, Lcom/google/gson/internal/c$g;

    invoke-direct {p0}, Lcom/google/gson/internal/c$g;-><init>()V

    return-object p0

    :cond_6
    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_7

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    invoke-static {p0}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p0

    const-class p1, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/gson/internal/c$h;

    invoke-direct {p0}, Lcom/google/gson/internal/c$h;-><init>()V

    return-object p0

    :cond_7
    new-instance p0, Lcom/google/gson/internal/c$i;

    invoke-direct {p0}, Lcom/google/gson/internal/c$i;-><init>()V

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/i;
    .locals 1

    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/gson/internal/c$n;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/c$n;-><init>(Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_0
    const-class v0, Ljava/util/EnumMap;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/google/gson/internal/c$o;

    invoke-direct {p1, p0}, Lcom/google/gson/internal/c$o;-><init>(Ljava/lang/reflect/Type;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private f(Ljava/lang/Class;)Lcom/google/gson/internal/i;
    .locals 2

    iget-boolean v0, p0, Lcom/google/gson/internal/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/gson/internal/c$j;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/c$j;-><init>(Lcom/google/gson/internal/c;Ljava/lang/Class;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; usage of JDK Unsafe is disabled. Registering an InstanceCreator or a TypeAdapter for this type, adding a no-args constructor, or enabling usage of JDK Unsafe may fix this problem."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/gson/internal/c$k;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/c$k;-><init>(Lcom/google/gson/internal/c;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/i;
    .locals 3

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    invoke-static {v0, p1}, Lcom/google/gson/internal/c;->e(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/i;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/gson/internal/c;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/google/gson/internal/l;->b(Ljava/util/List;Ljava/lang/Class;)Lcom/google/gson/s;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/gson/internal/c;->c(Ljava/lang/Class;Lcom/google/gson/s;)Lcom/google/gson/internal/i;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-static {v0, p1}, Lcom/google/gson/internal/c;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/i;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/google/gson/internal/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance p1, Lcom/google/gson/internal/c$l;

    invoke-direct {p1, p0, v0}, Lcom/google/gson/internal/c$l;-><init>(Lcom/google/gson/internal/c;Ljava/lang/String;)V

    return-object p1

    :cond_3
    sget-object v0, Lcom/google/gson/s;->ALLOW:Lcom/google/gson/s;

    if-ne v1, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/google/gson/internal/c;->f(Ljava/lang/Class;)Lcom/google/gson/internal/i;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; ReflectionAccessFilter does not permit using reflection or Unsafe. Register an InstanceCreator or a TypeAdapter for this type or adjust the access filter to allow using reflection."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/gson/internal/c$m;

    invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/c$m;-><init>(Lcom/google/gson/internal/c;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/gson/internal/c;->a:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
