.class public abstract Lv5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/List;

.field private static b:Ljava/util/Map;

.field private static c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lv5/a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lv5/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.content.pm.IPackageManager"

    const-string v2, "android.view.IWindowManager"

    const-string v3, "android.app.IActivityManager"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lv5/a;->c:Ljava/util/List;

    return-void
.end method

.method public static a()V
    .locals 4

    sget-object v0, Lv5/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lv5/a;->a:Ljava/util/List;

    new-instance v3, Lv5/b;

    invoke-direct {v3, v1}, Lv5/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Lv5/a;->b:Ljava/util/Map;

    const-string v1, "android.view.IWindowSession"

    const-string v2, "IWindowSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv5/a;->b:Ljava/util/Map;

    const-string v1, "android.view.IWindowManager"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv5/a;->b:Ljava/util/Map;

    const-string v1, "android.content.pm.IPackageInstaller"

    const-string v2, "PackageInstaller.Session"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lv5/a;->b:Ljava/util/Map;

    const-string v1, "android.content.pm.IPackageInstallerSession"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
