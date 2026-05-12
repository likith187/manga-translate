.class public final Lcom/coloros/translate/screen/translate/business/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coloros/translate/screen/translate/business/e;
.implements Lcom/coloros/translate/screen/translate/business/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/screen/translate/business/k$a;
    }
.end annotation


# static fields
.field public static final i:Lcom/coloros/translate/screen/translate/business/k$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/coloros/translate/screen/translate/business/f;

.field private final c:Lcom/coloros/translate/screen/translate/business/d;

.field private final d:Ljava/util/concurrent/ConcurrentHashMap;

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private g:Ljava/lang/String;

.field private h:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/screen/translate/business/k$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/screen/translate/business/k$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/screen/translate/business/k;->i:Lcom/coloros/translate/screen/translate/business/k$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/coloros/translate/screen/translate/business/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    new-instance p2, Lcom/coloros/translate/screen/translate/business/h;

    invoke-direct {p2, p1, p0}, Lcom/coloros/translate/screen/translate/business/h;-><init>(Landroid/content/Context;Lcom/coloros/translate/screen/translate/business/d$a;)V

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/k;->c:Lcom/coloros/translate/screen/translate/business/d;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/k;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/translate/screen/translate/business/k;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static synthetic e(Lcom/coloros/translate/screen/translate/business/k;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/translate/screen/translate/business/k;->h(Lcom/coloros/translate/screen/translate/business/k;)V

    return-void
.end method

.method public static synthetic f(Lcom/coloros/translate/screen/translate/business/k;Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/k;->l(Lcom/coloros/translate/screen/translate/business/k;Lcom/coloros/translate/screen/translate/business/m;I)V

    return-void
.end method

.method private static final h(Lcom/coloros/translate/screen/translate/business/k;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/business/k;->m()V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->c:Lcom/coloros/translate/screen/translate/business/d;

    invoke-interface {p0}, Lcom/coloros/translate/screen/translate/business/d;->a()V

    return-void
.end method

.method private final i(Landroid/content/Context;Lcom/coloros/translate/screen/translate/business/m;I)Lcom/coloros/translate/screen/translate/business/g;
    .locals 10

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOCRData "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " retry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenTranslationPresenter"

    invoke-virtual {p0, v1, v0}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/business/m;->c()Landroid/graphics/Rect;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0, v2}, Lcom/coloros/translate/screen/utils/l;->a(Landroid/content/Context;Landroid/graphics/Rect;Ljava/lang/Boolean;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "shot result is null"

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/business/m;->a()Lw8/a;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lw8/a;->invoke()Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/business/m;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v2}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    move-object v5, v2

    goto :goto_0

    :cond_2
    move-object v5, p1

    :goto_0
    invoke-static {v5}, Lcom/coloros/translate/screen/utils/a;->b(Landroid/graphics/Bitmap;)Ln8/q;

    move-result-object p1

    invoke-virtual {p1}, Ln8/q;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v8

    invoke-virtual {p1}, Ln8/q;->getSecond()Ljava/lang/Object;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createOCRData resize scale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createOCRData shot: w: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", h: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", size: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, p1

    check-cast v6, Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v0

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_4
    move-object v4, v0

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createOCRData scaleBitmap: w: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/coloros/translate/screen/translate/business/g;

    move-object v3, p0

    move-object v4, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/coloros/translate/screen/translate/business/g;-><init>(Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IF)V

    return-object p0
.end method

.method private final j(Lcom/coloros/translate/screen/translate/business/m;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/coloros/translate/screen/translate/business/b;->INSTANCE:Lcom/coloros/translate/screen/translate/business/b;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/business/b;->b()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/coloros/translate/screen/utils/w;->f()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/coloros/translate/screen/ScreenTranslationService;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final l(Lcom/coloros/translate/screen/translate/business/k;Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->a:Landroid/content/Context;

    invoke-direct {p0, v0, p1, p2}, Lcom/coloros/translate/screen/translate/business/k;->i(Landroid/content/Context;Lcom/coloros/translate/screen/translate/business/m;I)Lcom/coloros/translate/screen/translate/business/g;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/translate/business/f;->e(Lcom/coloros/translate/screen/translate/business/m;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/coloros/translate/screen/translate/business/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->c:Lcom/coloros/translate/screen/translate/business/d;

    invoke-interface {p0, p2}, Lcom/coloros/translate/screen/translate/business/d;->b(Lcom/coloros/translate/screen/translate/business/g;)V

    return-void
.end method

.method private final m()V
    .locals 6

    const-string v0, "ScreenTranslationPresenter"

    :try_start_0
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/business/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/translate/screen/translate/business/g;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/business/g;->g()V

    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tryRelease:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryRelease:onFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/coloros/translate/screen/translate/business/g;I)V
    .locals 1

    const-string v0, "presenterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/f;->h(Lcom/coloros/translate/screen/translate/business/m;I)V

    return-void
.end method

.method public b(Lcom/coloros/translate/screen/translate/business/g;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    const-string v0, "presenterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bitmap"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/business/k;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/business/k;->h:Landroid/graphics/Bitmap;

    iget-object p3, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object p1

    invoke-interface {p3, p1, p2}, Lcom/coloros/translate/screen/translate/business/f;->i(Lcom/coloros/translate/screen/translate/business/m;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/business/k;->m()V

    return-void
.end method

.method public c(Lcom/coloros/translate/screen/translate/business/m;I)V
    .locals 4

    const-string v0, "viewRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/m;->d()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start translate\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenTranslationPresenter"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->h:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/coloros/translate/observer/e;->INSTANCE:Lcom/coloros/translate/observer/e;

    invoke-virtual {v1}, Lcom/coloros/translate/observer/e;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    sget p2, Lcom/coloros/translate/screen/R$string;->translate_unified_no_network:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v1, v2, v0}, Lcom/coloros/translate/screen/utils/u;->d(IIILjava/lang/Object;)V

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/translate/business/f;->o(Lcom/coloros/translate/screen/translate/business/m;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/translate/screen/translate/business/k;->j(Lcom/coloros/translate/screen/translate/business/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    invoke-interface {p0, p1}, Lcom/coloros/translate/screen/translate/business/f;->f(Lcom/coloros/translate/screen/translate/business/m;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/business/k;->m()V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/translate/screen/translate/business/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/translate/screen/translate/business/j;-><init>(Lcom/coloros/translate/screen/translate/business/k;Lcom/coloros/translate/screen/translate/business/m;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Lcom/coloros/translate/screen/translate/business/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "presenterRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->b:Lcom/coloros/translate/screen/translate/business/f;

    invoke-virtual {p1}, Lcom/coloros/translate/screen/translate/business/g;->e()Lcom/coloros/translate/screen/translate/business/m;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3}, Lcom/coloros/translate/screen/translate/business/f;->m(Lcom/coloros/translate/screen/translate/business/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/business/k;->m()V

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/coloros/translate/screen/translate/business/i;

    invoke-direct {v1, p0}, Lcom/coloros/translate/screen/translate/business/i;-><init>(Lcom/coloros/translate/screen/translate/business/k;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/coloros/translate/screen/translate/business/k;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/business/k;->g()V

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/business/k;->m()V

    return-void
.end method
