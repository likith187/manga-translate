.class public Lf5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lo4/c;


# instance fields
.field protected final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lf5/j;

    invoke-static {v0}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v0

    const-class v1, Lf5/g;

    invoke-static {v1}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v0

    new-instance v1, Lf5/x;

    invoke-direct {v1}, Lf5/x;-><init>()V

    invoke-virtual {v0, v1}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lo4/c$b;->c()Lo4/c;

    move-result-object v0

    sput-object v0, Lf5/j;->b:Lo4/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/j;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lf5/j;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ml_sdk_instance_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lf5/j;->b()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ml_sdk_instance_id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected final b()Landroid/content/SharedPreferences;
    .locals 2

    iget-object p0, p0, Lf5/j;->a:Landroid/content/Context;

    const-string v0, "com.google.mlkit.internal"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
