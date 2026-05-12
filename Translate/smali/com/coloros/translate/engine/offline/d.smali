.class public Lcom/coloros/translate/engine/offline/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile d:Lcom/coloros/translate/engine/offline/d;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/ArrayList;

.field private c:Ljava/util/List;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/d;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/g;->generateDefaultPackageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/f0;

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/d;->a:Ljava/util/Map;

    iget-object v2, v0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/coloros/translate/engine/offline/d;Lcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/d;->m(Lcom/coloros/translate/engine/offline/f0;)V

    return-void
.end method

.method public static synthetic b(Ljava/util/List;Ljava/util/List;Lcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/offline/d;->l(Ljava/util/List;Ljava/util/List;Lcom/coloros/translate/engine/offline/f0;)V

    return-void
.end method

.method public static synthetic c(Lcom/coloros/translate/engine/offline/f0;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/engine/offline/d;->k(Lcom/coloros/translate/engine/offline/f0;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string p0, "zhen"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_19

    const-string p0, "enzh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_c

    :cond_0
    const-string p0, "zhko"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    const-string p0, "kozh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_b

    :cond_1
    const-string p0, "zhfr"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_17

    const-string p0, "frzh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto/16 :goto_a

    :cond_2
    const-string p0, "zhja"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "jazh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_9

    :cond_3
    const-string p0, "zhvi"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_15

    const-string p0, "vizh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string p0, "zhes"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_14

    const-string p0, "eszh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto/16 :goto_7

    :cond_5
    const-string p0, "zhit"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "itzh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto/16 :goto_6

    :cond_6
    const-string p0, "zhde"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "dezh"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_5

    :cond_7
    const-string p0, "enhi"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "hien"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    const-string p0, "envi"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "vien"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    goto :goto_3

    :cond_9
    const-string p0, "enth"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_f

    const-string p0, "then"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    const-string p0, "enes"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_e

    const-string p0, "esen"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_1

    :cond_b
    const-string p0, "enid"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_d

    const-string p0, "iden"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 p0, 0x0

    return-object p0

    :cond_d
    :goto_0
    const-string p0, "apps_translate_res_ei"

    return-object p0

    :cond_e
    :goto_1
    const-string p0, "apps_translate_res_es"

    return-object p0

    :cond_f
    :goto_2
    const-string p0, "apps_translate_res_et"

    return-object p0

    :cond_10
    :goto_3
    const-string p0, "apps_translate_res_ev"

    return-object p0

    :cond_11
    :goto_4
    const-string p0, "apps_translate_res_eh"

    return-object p0

    :cond_12
    :goto_5
    const-string p0, "apps_translate_res_cg"

    return-object p0

    :cond_13
    :goto_6
    const-string p0, "apps_translate_res_ci"

    return-object p0

    :cond_14
    :goto_7
    const-string p0, "apps_translate_res_cs"

    return-object p0

    :cond_15
    :goto_8
    const-string p0, "apps_translate_res_cv"

    return-object p0

    :cond_16
    :goto_9
    const-string p0, "apps_translate_res_cj"

    return-object p0

    :cond_17
    :goto_a
    const-string p0, "apps_translate_res_cf"

    return-object p0

    :cond_18
    :goto_b
    const-string p0, "apps_translate_res_ck"

    return-object p0

    :cond_19
    :goto_c
    const-string p0, "apps_translate_res_ce"

    return-object p0
.end method

.method private e()V
    .locals 4

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/coloros/translate/engine/offline/g;->coverToBusinessIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    new-instance v3, Lcom/coloros/translate/engine/offline/a;

    invoke-direct {v3, v0, v1}, Lcom/coloros/translate/engine/offline/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/coloros/translate/engine/offline/b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/b;-><init>(Lcom/coloros/translate/engine/offline/d;)V

    invoke-interface {v1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_1
    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/d;
    .locals 2

    sget-object v0, Lcom/coloros/translate/engine/offline/d;->d:Lcom/coloros/translate/engine/offline/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/coloros/translate/engine/offline/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/coloros/translate/engine/offline/d;->d:Lcom/coloros/translate/engine/offline/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coloros/translate/engine/offline/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/coloros/translate/engine/offline/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/translate/engine/offline/d;->d:Lcom/coloros/translate/engine/offline/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/coloros/translate/engine/offline/d;->d:Lcom/coloros/translate/engine/offline/d;

    return-object p0
.end method

.method private i(J)Lcom/coloros/translate/engine/offline/f0;
    .locals 3

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/f0;

    iget-wide v1, v0, Lcom/coloros/translate/engine/offline/f0;->e:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic k(Lcom/coloros/translate/engine/offline/f0;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private static synthetic l(Ljava/util/List;Ljava/util/List;Lcom/coloros/translate/engine/offline/f0;)V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lcom/coloros/translate/engine/offline/c;

    invoke-direct {v1, p2, v0}, Lcom/coloros/translate/engine/offline/c;-><init>(Lcom/coloros/translate/engine/offline/f0;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private synthetic m(Lcom/coloros/translate/engine/offline/f0;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private r(Lorg/json/JSONArray;)V
    .locals 11

    const-string v0, "fileSize"

    const-string v1, "key"

    const-string v2, "AllOfflinePackage"

    iget-object v3, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "updateByJson resp fail"

    invoke-static {v2, v5}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_0

    const-string v5, "updateByJson resp is null"

    invoke-static {v2, v5}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_0
    :try_start_1
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/coloros/translate/engine/offline/d;->a:Ljava/util/Map;

    invoke-direct {p0, v6}, Lcom/coloros/translate/engine/offline/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/coloros/translate/engine/offline/f0;

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/coloros/translate/engine/offline/f0;->i:Ljava/lang/String;

    const-string v8, "?"

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_3

    :cond_1
    :goto_2
    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/coloros/translate/engine/offline/f0;->j:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/coloros/translate/engine/offline/f0;->l:J

    const-string v6, "version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/coloros/translate/engine/offline/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {p0, v6, v8, v9, v10}, Lcom/coloros/translate/engine/offline/d;->s(ILjava/lang/String;J)V

    iput v6, v7, Lcom/coloros/translate/engine/offline/f0;->n:I

    invoke-virtual {v7, v6}, Lcom/coloros/translate/engine/offline/f0;->h(I)V

    goto :goto_4

    :cond_2
    const-string v5, "updateByJson packageData is null"

    invoke-static {v2, v5}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateByJson error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/coloros/translate/utils/c0;->j(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object p1, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/coloros/translate/engine/offline/d;->e()V

    :cond_4
    return-void
.end method

.method private s(ILjava/lang/String;J)V
    .locals 1

    sget-object p0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v0, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Lcom/coloros/translate/utils/l0$a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-le p1, v0, :cond_0

    sget-object p1, Lcom/coloros/translate/utils/m;->a:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/coloros/translate/utils/l0$a;->h(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method h(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/engine/offline/f0;

    return-object p0
.end method

.method public j(Ljava/lang/Boolean;)Ljava/util/List;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getAdaptLanguageCode()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/engine/offline/f0;

    iget-object v2, v2, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coloros/translate/engine/offline/f0;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method n(Landroid/content/Context;Lt1/a;)V
    .locals 1

    iget-object v0, p2, Lt1/a;->r:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/coloros/translate/engine/offline/d;->h(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/coloros/translate/engine/offline/f0;->g(Landroid/content/Context;Lt1/a;Z)V

    return-void
.end method

.method o(Lt1/a;Z)V
    .locals 0

    iget-object p1, p1, Lt1/a;->r:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/d;->h(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/coloros/translate/engine/offline/f0$a;->COMPRESSED:Lcom/coloros/translate/engine/offline/f0$a;

    iput-object p1, p0, Lcom/coloros/translate/engine/offline/f0;->a:Lcom/coloros/translate/engine/offline/f0$a;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/f0;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method p(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/coloros/translate/engine/offline/d;->i(J)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/f0;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/f0;->f()V

    :cond_0
    return-void
.end method

.method q(Landroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/translate/engine/offline/f0;

    invoke-virtual {v0, p1}, Lcom/coloros/translate/engine/offline/f0;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/f0;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method t(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AllOfflinePackage"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "updateByJson json is null"

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/d;->r(Lorg/json/JSONArray;)V

    const/4 p0, 0x1

    return p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateByJson parseObject fail, json:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/translate/utils/c0;->o(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method u(Landroid/content/Context;Ljava/util/List;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt1/a;

    iget-object v2, v1, Lt1/a;->r:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/coloros/translate/engine/offline/d;->h(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Lcom/coloros/translate/engine/offline/f0;->g(Landroid/content/Context;Lt1/a;Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/coloros/translate/engine/offline/d;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/coloros/translate/engine/offline/f0;

    iget-object v1, p2, Lcom/coloros/translate/engine/offline/f0;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2, p1}, Lcom/coloros/translate/engine/offline/f0;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/coloros/translate/engine/offline/f0;->f()V

    goto :goto_1

    :cond_3
    return-void
.end method
