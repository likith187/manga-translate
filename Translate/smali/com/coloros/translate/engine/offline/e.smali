.class public Lcom/coloros/translate/engine/offline/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile e:Lcom/coloros/translate/engine/offline/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Ljava/util/Set;)V
    .locals 3

    const-string p0, "DecompressTool"

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFiles delete failed, path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "deleteFiles pathSet is empty"

    invoke-static {p0, p1}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lcom/coloros/translate/engine/offline/e;
    .locals 2

    sget-object v0, Lcom/coloros/translate/engine/offline/e;->e:Lcom/coloros/translate/engine/offline/e;

    if-nez v0, :cond_1

    const-class v0, Lcom/coloros/translate/engine/offline/e;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/translate/engine/offline/e;->e:Lcom/coloros/translate/engine/offline/e;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coloros/translate/engine/offline/e;

    invoke-direct {v1}, Lcom/coloros/translate/engine/offline/e;-><init>()V

    sput-object v1, Lcom/coloros/translate/engine/offline/e;->e:Lcom/coloros/translate/engine/offline/e;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/coloros/translate/engine/offline/e;->e:Lcom/coloros/translate/engine/offline/e;

    return-object v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/e;->a:Ljava/lang/String;

    const-string v1, "md5.xml"

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/g0;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/e;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/e;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/g0;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/e;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/e;->d:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private e(ZLjava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "model/"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/translate/engine/offline/e;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/e;->d:Ljava/lang/String;

    invoke-static {p2, p1, p0, v0}, Lcom/coloros/translate/utils/e1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/engine/offline/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/e;->b:Ljava/lang/String;

    invoke-static {p2, p1, p0, v0}, Lcom/coloros/translate/utils/e1;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_0
    const-string p1, "DecompressTool"

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decompress unZipSauData failed DATA_ZIP_SDCARD_PATH = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decompress deleteZipFileResult failed DATA_ZIP_SDCARD_PATH = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/e;->d()V

    invoke-direct {p0, p3, p2}, Lcom/coloros/translate/engine/offline/e;->e(ZLjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/coloros/translate/engine/offline/e;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/e;->d:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/coloros/translate/utils/k0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/coloros/translate/engine/offline/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/e;->b:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/coloros/translate/utils/k0;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decompress fileMd5Map = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DecompressTool"

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/coloros/translate/engine/offline/e;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p3, p0, Lcom/coloros/translate/engine/offline/e;->b:Ljava/lang/String;

    :goto_1
    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result p3

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decompress deleteSauResXmlResult failed path = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/e;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {p2}, Lcom/coloros/translate/utils/h;->a(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decompress checkResult = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    const-string p1, "decompress checkResult hasFailedItem"

    invoke-static {v2, p1}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/e;->b(Ljava/util/Set;)V

    return v0

    :cond_7
    invoke-static {}, Lcom/coloros/translate/engine/offline/k0;->e()Lcom/coloros/translate/engine/offline/k0;

    move-result-object p0

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/offline/k0;->a(Ljava/lang/String;Ljava/util/Set;)Z

    move-result p0

    return p0

    :cond_8
    :goto_2
    const-string p1, "decompress checkResult is empty"

    invoke-static {v2, p1}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/e;->b(Ljava/util/Set;)V

    return v0

    :cond_9
    :goto_3
    const-string p0, "decompress fileMd5Map is empty"

    invoke-static {v2, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
