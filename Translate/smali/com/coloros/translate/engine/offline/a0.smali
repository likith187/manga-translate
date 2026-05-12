.class public final Lcom/coloros/translate/engine/offline/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/offline/a0;

.field private static a:Lcom/coloros/translate/engine/offline/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/offline/a0;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/a0;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/a0;->g(Landroid/content/Context;)V

    return-void
.end method

.method private final b()V
    .locals 2

    invoke-static {}, Lcom/coloros/translate/engine/offline/g;->getAllLanguageCode()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getAllLanguageCode(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/coloros/translate/engine/offline/a0;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final c(Landroid/content/Context;)V
    .locals 13

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "checkAndUpdateOfflineCommonFile"

    const-string v1, "OfflineEngineImpl"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/coloros/translate/engine/offline/h0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "text"

    const/4 v4, 0x4

    const-string v5, "common_file_name"

    if-nez v2, :cond_0

    const-string v0, "common file is not exist"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/h0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v3, p0}, Lcom/coloros/translate/utils/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-virtual {p0, p1, v5, v4}, Lcom/coloros/translate/utils/l0$a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-virtual {v2, p1, v5}, Lcom/coloros/translate/utils/l0$a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    if-eq v6, v4, :cond_1

    const-string v6, "common need update"

    invoke-virtual {p0, v1, v6}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/coloros/translate/utils/y;->b(Ljava/io/File;)Z

    invoke-static {p1}, Lcom/coloros/translate/engine/offline/h0;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v3, p0}, Lcom/coloros/translate/utils/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v5, v4}, Lcom/coloros/translate/utils/l0$a;->i(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    sget-object v6, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v11, 0xc

    const/4 v12, 0x0

    const-string v7, "nmt_common_exist"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private static final g(Landroid/content/Context;)V
    .locals 1

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->a:Lcom/coloros/translate/engine/offline/x;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/engine/offline/a0;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coloros/translate/engine/offline/g0;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/coloros/translate/engine/offline/k0;->e()Lcom/coloros/translate/engine/offline/k0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/k0;->g()V

    invoke-static {p0}, Lcom/coloros/translate/engine/offline/x;->o(Landroid/content/Context;)Lcom/coloros/translate/engine/offline/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/x;->r()V

    sget-object v0, Lcom/coloros/translate/engine/offline/b0;->INSTANCE:Lcom/coloros/translate/engine/offline/b0;

    invoke-virtual {v0}, Lcom/coloros/translate/engine/offline/b0;->b()V

    sget-object v0, Lcom/coloros/translate/engine/offline/a0;->INSTANCE:Lcom/coloros/translate/engine/offline/a0;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/a0;->b()V

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/a0;->c(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/coloros/translate/engine/offline/g0;->b()Lcom/coloros/translate/engine/offline/g0;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/g0;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/coloros/translate/engine/offline/e;->c()Lcom/coloros/translate/engine/offline/e;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p0, v2}, Lcom/coloros/translate/engine/offline/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    sget-object p0, Lcom/coloros/translate/engine/offline/a0;->a:Lcom/coloros/translate/engine/offline/x;

    invoke-static {p0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/x;->p(Ljava/lang/String;)Lcom/coloros/translate/engine/offline/f0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/f0;->a()V

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final d(Landroid/content/Context;Ljava/lang/String;)Lcom/coloros/translate/engine/IOfflineTranslateEngine;
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "fromType"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "ocr_text_offline"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/coloros/translate/engine/offline/k0;->e()Lcom/coloros/translate/engine/offline/k0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/k0;->g()V

    :cond_1
    new-instance p0, Lcom/coloros/translate/engine/offline/t0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "getApplicationContext(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/coloros/translate/engine/offline/t0;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public final e(La2/b;)V
    .locals 0

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/offline/b0;->INSTANCE:Lcom/coloros/translate/engine/offline/b0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/b0;->a(La2/b;)V

    return-void
.end method

.method public final f()V
    .locals 2

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "OfflineEngineImpl"

    const-string v1, "init"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p0}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lcom/coloros/translate/engine/offline/z;

    invoke-direct {v0, p0}, Lcom/coloros/translate/engine/offline/z;-><init>(Landroid/content/Context;)V

    const-string p0, "request_download_offline_info"

    invoke-static {p0, v0}, Lcom/coloros/translate/utils/u0;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
