.class public Le7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le7/a$a;,
        Le7/a$c;,
        Le7/a$b;,
        Le7/a$d;,
        Le7/a$e;
    }
.end annotation


# static fields
.field public static final h:[Ljava/lang/String;

.field public static final i:[Ljava/lang/String;

.field private static j:Le7/a;

.field private static k:Landroid/os/HandlerThread;

.field private static l:I


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Ljava/lang/String;

.field private c:Landroid/net/Uri;

.field private d:Z

.field private e:Le7/b;

.field private f:Le7/a$c;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    const-string v17, "is_visible_in_downloads_ui"

    const-string v18, "download_speed"

    const-string v0, "_id"

    const-string v1, "local_filename"

    const-string v2, "mediaprovider_uri"

    const-string v3, "destination"

    const-string v4, "title"

    const-string v5, "description"

    const-string v6, "uri"

    const-string v7, "status"

    const-string v8, "hint"

    const-string v9, "media_type"

    const-string v10, "total_size"

    const-string v11, "last_modified_timestamp"

    const-string v12, "bytes_so_far"

    const-string v13, "allow_write"

    const-string v14, "local_uri"

    const-string v15, "reason"

    const-string v16, "notificationpackage"

    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le7/a;->h:[Ljava/lang/String;

    const-string v18, "\'placeholder\' AS local_uri"

    const-string v19, "\'placeholder\' AS reason"

    const-string v1, "_id"

    const-string v2, "_data AS local_filename"

    const-string v3, "mediaprovider_uri"

    const-string v4, "destination"

    const-string v5, "title"

    const-string v6, "description"

    const-string v7, "uri"

    const-string v8, "status"

    const-string v9, "hint"

    const-string v10, "notificationpackage"

    const-string v11, "mimetype AS media_type"

    const-string v12, "total_bytes AS total_size"

    const-string v13, "lastmod AS last_modified_timestamp"

    const-string v14, "current_bytes AS bytes_so_far"

    const-string v15, "allow_write"

    const-string v16, "is_visible_in_downloads_ui"

    const-string v17, "download_speed"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le7/a;->i:[Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Le7/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    sput v0, Le7/a;->l:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Le7/a;->c:Landroid/net/Uri;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Le7/a;->k:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le7/a;->g:Landroid/os/Handler;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Le7/a;->a:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Le7/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Le7/a;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v0

    :cond_1
    iput-object p2, p0, Le7/a;->b:Ljava/lang/String;

    :goto_0
    sget-boolean p2, Lf7/a;->a:Z

    const-string v0, "DownloadManager"

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager. mPackageName = "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le7/a;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    if-ge p2, v1, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Le7/a;->d:Z

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p1, "com.android.providers.downloads"

    const/16 p2, 0x80

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string p1, "provider_version"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    sput p0, Le7/a;->l:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DownloadManager,exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The context and resolver can\'t be null !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Le7/a;->l:I

    return v0
.end method

.method static synthetic b(Le7/a;)Le7/a$b;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Le7/a;)Le7/b;
    .locals 0

    iget-object p0, p0, Le7/a;->e:Le7/b;

    return-object p0
.end method

.method static synthetic d(Le7/a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Le7/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Le7/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Le7/a;->g:Landroid/os/Handler;

    return-object p0
.end method

.method public static f([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpArray array= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DownloadManager"

    invoke-static {v0, p0}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/content/Context;)Le7/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Le7/a;->l(Landroid/content/Context;Ljava/lang/String;)Le7/a;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized l(Landroid/content/Context;Ljava/lang/String;)Le7/a;
    .locals 2

    const-class v0, Le7/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Le7/a;->j:Le7/a;

    if-nez v1, :cond_0

    new-instance v1, Le7/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Le7/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v1, Le7/a;->j:Le7/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Le7/a;->j:Le7/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.oplus.providers.downloads.ui.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "com.coloros.providers.downloads.ui"

    return-object p0
.end method

.method static n([J)[Ljava/lang/String;
    .locals 1

    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Le7/a;->o([J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static o([J[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method static p([J)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static q([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "notificationpackage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static r([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, "OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "uuid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized w()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le7/a;->f:Le7/a$c;

    if-nez v0, :cond_0

    new-instance v0, Le7/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le7/a$c;-><init>(Le7/a;Landroid/os/Handler;)V

    iput-object v0, p0, Le7/a;->f:Le7/a$c;

    iget-object v1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    sget-object v2, Le7/c;->b:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Le7/a;->a:Landroid/content/ContentResolver;

    sget-object v1, Le7/c;->a:Landroid/net/Uri;

    iget-object v2, p0, Le7/a;->f:Le7/a$c;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public varargs A([J)I
    .locals 14

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "DownloadManager"

    if-eqz p1, :cond_f

    array-length v3, p1

    if-nez v3, :cond_0

    goto/16 :goto_8

    :cond_0
    sget-boolean v3, Lf7/a;->a:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeDownload dumpArray= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v3, "control"

    const-string v4, "status"

    const-string v5, "_id"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v13, 0x0

    :try_start_0
    iget-object v6, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object v7, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {p1}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v9

    invoke-static {p1}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_3

    :try_start_1
    const-string v5, "resumeDownload return 0!"

    invoke-static {v2, v5}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    move-object v13, p1

    goto/16 :goto_7

    :catch_0
    move-exception v5

    goto/16 :goto_4

    :cond_3
    :try_start_2
    sget-boolean v6, Lf7/a;->a:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resumeDownload cursor.getCount() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v8}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v10

    if-nez v10, :cond_6

    const/16 v10, 0xc7

    if-ne v8, v10, :cond_5

    goto :goto_1

    :cond_5
    if-nez v9, :cond_7

    :cond_6
    :goto_1
    const/16 v9, 0xc1

    if-eq v8, v9, :cond_7

    const/16 v9, 0xc2

    if-eq v8, v9, :cond_7

    const/16 v9, 0xc3

    if-eq v8, v9, :cond_7

    const/16 v9, 0xc4

    if-eq v8, v9, :cond_7

    const/16 v9, 0xc6

    if-eq v8, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resumeDownload Cannot resume a completed task. id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", stauts = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_8
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_1
    move-exception p0

    goto/16 :goto_7

    :catch_1
    move-exception v5

    move-object p1, v13

    :goto_4
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception happened in getUriForDownloadedFile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_a

    const-string p0, "resumeDownload resumeIdList size <= 0, return."

    invoke-static {v2, p0}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_a
    sget-boolean v5, Lf7/a;->a:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resumeDownload resumeIdList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "numfailed"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_c

    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v13, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_c
    new-array v1, p1, [J

    :goto_6
    if-ge v0, p1, :cond_d

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_d
    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {v1}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :goto_7
    if-eqz v13, :cond_e

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_e
    throw p0

    :cond_f
    :goto_8
    const-string p0, "resumeDownload input param \'ids\' can\'t be null"

    invoke-static {v2, p0}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public B(Z)V
    .locals 0

    iput-boolean p1, p0, Le7/a;->d:Z

    return-void
.end method

.method public varargs C(I[J)I
    .locals 3

    if-eqz p2, :cond_1

    array-length v0, p2

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "allowed_network_types"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length p1, p2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    const/4 v1, 0x0

    aget-wide v1, p2, v1

    invoke-static {p0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {p2}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "setAllowedNetworkTypes input param \'ids\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public g(Le7/a$e;)J
    .locals 4

    const-string v0, "DownloadManager"

    const-wide/16 v1, -0x1

    :try_start_0
    iget-object v3, p0, Le7/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Le7/a$e;->j(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    iget-object p0, p0, Le7/a;->a:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const-string p0, "enqueue, downloadUri = null, return -1."

    invoke-static {v0, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueue, occur exception. e = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public h(ILjava/lang/String;ZLjava/lang/String;I)Ljava/util/List;
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Le7/a;->i(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le7/a;->B(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual/range {p0 .. p6}, Le7/a;->v(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    sget-boolean p3, Lf7/a;->a:Z

    if-eqz p3, :cond_0

    const-string p3, "DownloadManager"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "getDownloadData  c.getCount() = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-lez p2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    new-instance p2, Lt1/a$a;

    iget-object p3, p0, Le7/a;->a:Landroid/content/ContentResolver;

    invoke-direct {p2, p3, p1}, Lt1/a$a;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {p2}, Lt1/a$a;->d()Lt1/a;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0
.end method

.method public varargs j([J)Ljava/util/List;
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le7/a;->B(Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Le7/a$d;

    invoke-direct {v1}, Le7/a$d;-><init>()V

    invoke-virtual {v1, p1}, Le7/a$d;->j([J)Le7/a$d;

    sget-boolean p1, Lf7/a;->a:Z

    const-string v2, "DownloadManager"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDownloadData -array-  mPackageName = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le7/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Le7/a;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Le7/a;->b:Ljava/lang/String;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Le7/a$d;->k([Ljava/lang/String;)Le7/a$d;

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Le7/a;->t(Le7/a$d;)Landroid/database/Cursor;

    move-result-object p1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    sget-boolean v3, Lf7/a;->a:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDownloadData  c.getCount() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_0
    if-lez v1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Lt1/a$a;

    iget-object v3, p0, Le7/a;->a:Landroid/content/ContentResolver;

    invoke-direct {v1, v3, p1}, Lt1/a$a;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    invoke-virtual {v1}, Lt1/a$a;->d()Lt1/a;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :cond_4
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0

    :goto_4
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method

.method public varargs s([J)I
    .locals 14

    const/4 v0, 0x0

    const-string v1, "DownloadManager"

    if-eqz p1, :cond_10

    array-length v2, p1

    if-nez v2, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-boolean v2, Lf7/a;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseDownload dumpArray array= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v2, "_id"

    const-string v3, "control"

    const-string v4, "status"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v11, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v12, 0x0

    const/4 v13, 0x1

    :try_start_0
    iget-object v5, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object v6, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {p1}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_3

    :try_start_1
    const-string v2, "pauseDownload return 0!"

    invoke-static {v1, v2}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :catchall_0
    move-exception p0

    move-object v12, p1

    goto/16 :goto_9

    :catch_0
    move-exception v2

    goto/16 :goto_6

    :cond_3
    :try_start_2
    sget-boolean v5, Lf7/a;->a:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pauseDownload cursor.getCount() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v9

    if-nez v9, :cond_6

    const/16 v9, 0xc7

    if-ne v7, v9, :cond_5

    goto :goto_1

    :cond_5
    move v7, v0

    goto :goto_2

    :cond_6
    :goto_1
    move v7, v13

    :goto_2
    if-nez v7, :cond_8

    if-ne v8, v13, :cond_7

    goto :goto_3

    :cond_7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pauseDownload isTaskCompleted:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",id:"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",control:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_9
    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :catch_1
    move-exception v2

    move-object p1, v12

    :goto_6
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception happened in pauseDownload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    :goto_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_b

    const-string p0, "pauseDownload pauseIds size <= 0, return."

    invoke-static {v1, p0}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    sget-boolean v2, Lf7/a;->a:Z

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pauseDownload pauseIdList = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-ne p1, v13, :cond_d

    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_d
    new-array v2, p1, [J

    :goto_8
    if-ge v0, p1, :cond_e

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_e
    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {v2}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, p0, v1, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :goto_9
    if-eqz v12, :cond_f

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_f
    throw p0

    :cond_10
    :goto_a
    const-string p0, "pauseDownload input param \'ids\' can\'t be null"

    invoke-static {v1, p0}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public t(Le7/a$d;)Landroid/database/Cursor;
    .locals 1

    sget-object v0, Le7/a;->h:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Le7/a;->u(Le7/a$d;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public u(Le7/a$d;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    iget-object p2, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object v0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Le7/a$d;->i(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Le7/a$a;

    iget-object v0, p0, Le7/a;->c:Landroid/net/Uri;

    iget-boolean p0, p0, Le7/a;->d:Z

    invoke-direct {p2, p1, v0, p0}, Le7/a$a;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object p2
.end method

.method public v(I[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)Landroid/database/Cursor;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Le7/a;->B(Z)V

    sget-boolean v0, Lf7/a;->a:Z

    const-string v1, "DownloadManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryDownloadData  mPackageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le7/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lf7/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Le7/a$d;

    invoke-direct {v0}, Le7/a$d;-><init>()V

    iget-object v2, p0, Le7/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Le7/a;->b:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Le7/a$d;->k([Ljava/lang/String;)Le7/a$d;

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Le7/a$d;->o([Ljava/lang/String;)Le7/a$d;

    :cond_2
    invoke-virtual {v0, p3}, Le7/a$d;->m(Ljava/lang/String;)Le7/a$d;

    invoke-virtual {v0, p1}, Le7/a$d;->l(I)Le7/a$d;

    invoke-virtual {v0, p4}, Le7/a$d;->n(Z)Le7/a$d;

    if-eqz p5, :cond_3

    invoke-virtual {v0, p5, p6}, Le7/a$d;->h(Ljava/lang/String;I)Le7/a$d;

    :cond_3
    :try_start_0
    invoke-virtual {p0, v0}, Le7/a;->t(Le7/a$d;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_4

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p0, 0x0

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lf7/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object p0
.end method

.method public x(Le7/b;)V
    .locals 1

    iput-object p1, p0, Le7/a;->e:Le7/b;

    invoke-direct {p0}, Le7/a;->w()V

    sget-boolean p1, Lf7/a;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerDownloadStatesCallback  mDownloadStatesCallback = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le7/a;->e:Le7/b;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadManager"

    invoke-static {p1, p0}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs y(Z[J)I
    .locals 2

    if-eqz p2, :cond_2

    array-length p1, p2

    if-eqz p1, :cond_2

    sget-boolean p1, Lf7/a;->a:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove start synchroDeleteFile force true , ids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadManager"

    invoke-static {v0, p1}, Lf7/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    const/4 v0, 0x0

    aget-wide v0, p2, v0

    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    iget-object p1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {p2}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, v0, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "remove input param \'ids\' can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs z([J)I
    .locals 8

    const-string v0, "DownloadManager"

    const-string v1, "status"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Le7/a$d;

    invoke-direct {v4}, Le7/a$d;-><init>()V

    invoke-virtual {v4, p1}, Le7/a$d;->j([J)Le7/a$d;

    move-result-object v4

    invoke-virtual {p0, v4}, Le7/a;->t(Le7/a$d;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return v2

    :cond_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    const/16 v6, 0x10

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restartDownload Cannot restart incomplete downloadid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_id"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v2

    :catchall_0
    move-exception p0

    move-object v3, v4

    goto/16 :goto_4

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_2
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v4, v3

    :goto_2
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception happened in restartDownload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lf7/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    :goto_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "current_bytes"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "total_bytes"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "_data"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "control"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "numfailed"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length v1, p1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    aget-wide v4, p1, v2

    invoke-static {p0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v1, p0, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    iget-object v1, p0, Le7/a;->a:Landroid/content/ContentResolver;

    iget-object p0, p0, Le7/a;->c:Landroid/net/Uri;

    invoke-static {p1}, Le7/a;->p([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Le7/a;->n([J)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p0
.end method
