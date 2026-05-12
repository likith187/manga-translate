.class public final Lo4/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo4/f$b;,
        Lo4/f$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lo4/f$c;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo4/f$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo4/f;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo4/f;->b:Lo4/f$c;

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Class;)Lo4/f;
    .locals 3

    new-instance v0, Lo4/f;

    new-instance v1, Lo4/f$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lo4/f$b;-><init>(Ljava/lang/Class;Lo4/f$a;)V

    invoke-direct {v0, p0, v1}, Lo4/f;-><init>(Ljava/lang/Object;Lo4/f$c;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Lo4/h;
    .locals 6

    const-string v0, "Could not instantiate %s."

    const-string v1, "Could not instantiate %s"

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lo4/h;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo4/h;

    return-object v3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :cond_0
    new-instance v3, Lo4/t;

    const-string v4, "Class %s is not an instance of %s"

    const-string v5, "com.google.firebase.components.ComponentRegistrar"

    filled-new-array {p0, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lo4/t;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lo4/t;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lo4/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Lo4/t;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Lo4/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_2
    new-instance v2, Lo4/t;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lo4/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_3
    new-instance v2, Lo4/t;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Lo4/t;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_4
    const-string v0, "Class %s is not an found."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ComponentDiscovery"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method static synthetic d(Ljava/lang/String;)Lo4/h;
    .locals 0

    invoke-static {p0}, Lo4/f;->c(Ljava/lang/String;)Lo4/h;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo4/f;->b:Lo4/f$c;

    iget-object p0, p0, Lo4/f;->a:Ljava/lang/Object;

    invoke-interface {v1, p0}, Lo4/f$c;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lo4/e;->a(Ljava/lang/String;)Lu4/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
