.class public Lcom/oplus/vfxsdk/naive/a;
.super Lcom/oplus/vfxsdk/common/l;
.source "SourceFile"

# interfaces
.implements Ld8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/naive/a$a;
    }
.end annotation


# static fields
.field public static final v:Lcom/oplus/vfxsdk/naive/a$a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Li8/a;

.field protected e:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

.field private f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private g:I

.field private h:I

.field private i:Lh8/a;

.field private j:Z

.field private k:Landroid/view/Surface;

.field private l:Lcom/oplus/vfxsdk/common/k;

.field private final m:Ljava/util/HashMap;

.field private final n:Ljava/util/HashMap;

.field private final o:Ljava/util/concurrent/ConcurrentHashMap;

.field private final p:Ljava/lang/Object;

.field private final q:Lcom/oplus/vfxsdk/naive/parse/a;

.field private final r:Ljava/util/Map;

.field private s:Ljava/util/ArrayList;

.field private t:Lh8/a;

.field private final u:Lcom/oplus/vfxsdk/common/t;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/naive/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/naive/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/naive/a;->v:Lcom/oplus/vfxsdk/naive/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Li8/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/vfxsdk/common/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/vfxsdk/naive/a;->d:Li8/a;

    .line 2
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->m:Ljava/util/HashMap;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->n:Ljava/util/HashMap;

    .line 5
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->p:Ljava/lang/Object;

    .line 7
    new-instance p1, Lcom/oplus/vfxsdk/naive/parse/a;

    invoke-direct {p1}, Lcom/oplus/vfxsdk/naive/parse/a;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->q:Lcom/oplus/vfxsdk/naive/parse/a;

    .line 8
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->r:Ljava/util/Map;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->s:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Lcom/oplus/vfxsdk/naive/a$b;

    invoke-direct {p1, p0}, Lcom/oplus/vfxsdk/naive/a$b;-><init>(Lcom/oplus/vfxsdk/naive/a;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    .line 11
    new-instance p1, Lcom/oplus/vfxsdk/common/t;

    new-instance p2, Lcom/oplus/vfxsdk/naive/a$d;

    invoke-direct {p2, p0}, Lcom/oplus/vfxsdk/naive/a$d;-><init>(Lcom/oplus/vfxsdk/naive/a;)V

    invoke-direct {p1, p2}, Lcom/oplus/vfxsdk/common/t;-><init>(Lw8/a;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->u:Lcom/oplus/vfxsdk/common/t;

    .line 12
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->r()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Li8/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 13
    new-instance p2, Li8/a;

    const/4 p3, 0x0

    const/4 p4, 0x3

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0, p4, v0}, Li8/a;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/oplus/vfxsdk/naive/a;-><init>(Landroid/content/Context;Li8/a;)V

    return-void
.end method

.method public static final synthetic d(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic e(Lcom/oplus/vfxsdk/naive/a;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->r:Ljava/util/Map;

    return-object p0
.end method

.method private final g()V
    .locals 2

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->A()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    invoke-interface {p0}, Lh8/a;->c()V

    return-void
.end method

.method private final s(I)V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    invoke-direct {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->C(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->d:Li8/a;

    invoke-virtual {p1}, Li8/a;->b()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setRenderThreadName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->attachAssetManager(Landroid/content/res/AssetManager;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->attachClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->m()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->initEngine([Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->initEngine()V

    :goto_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->t()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    invoke-interface {p0}, Lh8/a;->a()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 2

    const-string v0, "VFX:COEEngine"

    const-string v1, "resetScene"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->resetScene()V

    return-void
.end method

.method public B(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator$a;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/oplus/vfxsdk/common/Animator;->setMAnimMode(Lcom/oplus/vfxsdk/common/Animator$a;)V

    :goto_0
    return-void
.end method

.method protected final C(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->e:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    return-void
.end method

.method public D(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setFPS(I)V

    return-void
.end method

.method public E()V
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->startEngine()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/a;->j:Z

    return-void
.end method

.method public F()V
    .locals 1

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->stopEngine()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/vfxsdk/naive/a;->j:Z

    return-void
.end method

.method public G(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->u:Lcom/oplus/vfxsdk/common/t;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/t;->h(Lcom/oplus/vfxsdk/common/Animator;)V

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/common/Animator;->stop()V

    :cond_0
    return-void
.end method

.method protected c(Lcom/oplus/vfxsdk/common/COEData;ZZ)V
    .locals 15

    move-object v0, p0

    const-string v1, "coeData"

    move-object/from16 v11, p1

    invoke-static {v11, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/naive/a;->g()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->bindScene()V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v1

    array-length v1, v1

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v1, :cond_5

    new-instance v14, Lcom/oplus/vfxsdk/naive/parse/COERenderer;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v3

    iget v2, v0, Lcom/oplus/vfxsdk/naive/a;->g:I

    int-to-float v4, v2

    iget v2, v0, Lcom/oplus/vfxsdk/naive/a;->h:I

    int-to-float v5, v2

    iget-object v6, v0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    new-instance v10, Lcom/oplus/vfxsdk/naive/parse/i;

    iget-object v2, v0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v7, v0, Lcom/oplus/vfxsdk/naive/a;->n:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/oplus/vfxsdk/naive/a;->r:Ljava/util/Map;

    invoke-direct {v10, v2, v7, v8}, Lcom/oplus/vfxsdk/naive/parse/i;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;Ljava/util/Map;)V

    move-object v2, v14

    move-object/from16 v7, p1

    move v8, v13

    move/from16 v9, p3

    invoke-direct/range {v2 .. v10}, Lcom/oplus/vfxsdk/naive/parse/COERenderer;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;FFLh8/a;Lcom/oplus/vfxsdk/common/COEData;IZLd8/b;)V

    iget-object v2, v0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->addCallback(Lcom/oplus/vfxsdk/naive/coe/engine/NativeCallback;)V

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/COEData;->getLayers()[Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v2

    aget-object v2, v2, v13

    invoke-virtual {v2}, Lcom/oplus/vfxsdk/common/Layer;->getRender()[Lcom/oplus/vfxsdk/common/RendPass;

    move-result-object v2

    array-length v3, v2

    move v4, v12

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/RendPass;->getUniforms()Ljava/util/HashMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    sget-object v7, Lcom/oplus/vfxsdk/common/n;->a:Lcom/oplus/vfxsdk/common/n$a;

    iget-object v8, v0, Lcom/oplus/vfxsdk/naive/a;->c:Landroid/content/Context;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/vfxsdk/common/Uniform;

    invoke-virtual {v7, v8, p0, v14, v6}, Lcom/oplus/vfxsdk/common/n$a;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Lcom/oplus/vfxsdk/common/Uniform;)Ld8/d;

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/COEData;->getExpressions()Lcom/oplus/vfxsdk/common/k;

    move-result-object v2

    iput-object v2, v0, Lcom/oplus/vfxsdk/naive/a;->l:Lcom/oplus/vfxsdk/common/k;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/COEData;->getAnimParams()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/oplus/vfxsdk/naive/a;->q:Lcom/oplus/vfxsdk/naive/parse/a;

    iget-object v3, v0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/oplus/vfxsdk/common/COEData;->getAnimParams()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/oplus/vfxsdk/naive/a;->l:Lcom/oplus/vfxsdk/common/k;

    if-nez v5, :cond_2

    const-string v5, "expression"

    invoke-static {v5}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v5, 0x0

    :cond_2
    new-instance v6, Lcom/oplus/vfxsdk/naive/parse/i;

    iget-object v7, v0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v8, v0, Lcom/oplus/vfxsdk/naive/a;->n:Ljava/util/HashMap;

    iget-object v9, v0, Lcom/oplus/vfxsdk/naive/a;->r:Ljava/util/Map;

    invoke-direct {v6, v7, v8, v9}, Lcom/oplus/vfxsdk/naive/parse/i;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;Ljava/util/Map;)V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oplus/vfxsdk/naive/parse/a;->b(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/util/HashMap;Lcom/oplus/vfxsdk/common/k;Ld8/b;)V

    :cond_3
    invoke-virtual {v14}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getAnimators()Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, v0, Lcom/oplus/vfxsdk/naive/a;->q:Lcom/oplus/vfxsdk/naive/parse/a;

    invoke-virtual {v14}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/vfxsdk/common/Layer;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/vfxsdk/common/Animator;

    invoke-virtual {v4, v5, v3}, Lcom/oplus/vfxsdk/naive/parse/a;->c(Ljava/lang/String;Lcom/oplus/vfxsdk/common/Animator;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v14}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getLayer()Lcom/oplus/vfxsdk/common/Layer;

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->E()V

    :cond_6
    iget-object v1, v0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    invoke-interface {v1}, Lh8/a;->d()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->unbindScene()V

    new-instance v1, Lcom/oplus/vfxsdk/naive/a$c;

    invoke-direct {v1, p0}, Lcom/oplus/vfxsdk/naive/a$c;-><init>(Lcom/oplus/vfxsdk/naive/a;)V

    invoke-virtual {p0, v1}, Lcom/oplus/vfxsdk/naive/a;->f(Lh8/b;)V

    return-void
.end method

.method public f(Lh8/b;)V
    .locals 1

    const-string v0, "updateListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->p()Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->addUpdateListener(Lh8/b;)V

    :cond_0
    return-void
.end method

.method public h(Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)Lcom/oplus/vfxsdk/naive/coe/engine/Texture;
    .locals 2

    const-string v0, "createInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    new-instance v1, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;

    invoke-direct {v1, v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/Texture;-><init>(Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;Lcom/oplus/vfxsdk/naive/coe/engine/TexCreateInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->q:Lcom/oplus/vfxsdk/naive/parse/a;

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/parse/a;->a(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getAnimators()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->getAnimators()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/common/Animator;

    if-eqz v0, :cond_1

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected final j()Lh8/a;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->i:Lh8/a;

    return-object p0
.end method

.method public final k()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method protected final l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->e:Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "engine"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public m()[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected final n()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final o()Lcom/oplus/vfxsdk/common/t;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->u:Lcom/oplus/vfxsdk/common/t;

    return-object p0
.end method

.method public p()Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    move-result-object p0

    return-object p0
.end method

.method public q(I)Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;
    .locals 0

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {p0, p1}, Lkotlin/collections/o;->T(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    return-object p0
.end method

.method public r()V
    .locals 1

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->d:Li8/a;

    invoke-virtual {v0}, Li8/a;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oplus/vfxsdk/naive/a;->s(I)V

    return-void
.end method

.method public final t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    invoke-virtual {v1}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onDestroy()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->destroyEngine()V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    invoke-interface {p0}, Lh8/a;->c()V

    const-string p0, "VFX:COEEngine"

    const-string v0, "engine destroyed"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public v(Landroid/view/Surface;II)V
    .locals 3

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VFX:COEEngine"

    const-string v1, "onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->k:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    iget v1, p0, Lcom/oplus/vfxsdk/naive/a;->g:I

    iget v2, p0, Lcom/oplus/vfxsdk/naive/a;->h:I

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_0
    iput p2, p0, Lcom/oplus/vfxsdk/naive/a;->g:I

    iput p3, p0, Lcom/oplus/vfxsdk/naive/a;->h:I

    return-void
.end method

.method public w(Landroid/view/Surface;)Z
    .locals 1

    const-string p1, "VFX:COEEngine"

    const-string v0, "onSurfaceTextureDestroyed"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->k:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    const/4 p0, 0x1

    return p0
.end method

.method public x(Landroid/view/Surface;II)V
    .locals 3

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VFX:COEEngine"

    const-string v1, "onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oplus/vfxsdk/naive/a;->g:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/oplus/vfxsdk/naive/a;->h:I

    if-eq v0, p3, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->k:Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->setSurface(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->t:Lh8/a;

    invoke-interface {p1}, Lh8/a;->b()V

    iget-object p1, p0, Lcom/oplus/vfxsdk/naive/a;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;

    iget v1, p0, Lcom/oplus/vfxsdk/naive/a;->g:I

    iget v2, p0, Lcom/oplus/vfxsdk/naive/a;->h:I

    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/BaseRenderer;->onSizeChanged(IIII)V

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/oplus/vfxsdk/naive/a;->g:I

    iput p3, p0, Lcom/oplus/vfxsdk/naive/a;->h:I

    :cond_2
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/naive/a;->i(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/Animator;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oplus/vfxsdk/common/Animator;->play(Z)V

    iget-object p0, p0, Lcom/oplus/vfxsdk/naive/a;->u:Lcom/oplus/vfxsdk/common/t;

    invoke-virtual {p0, p1}, Lcom/oplus/vfxsdk/common/t;->c(Lcom/oplus/vfxsdk/common/Animator;)V

    :cond_0
    return-void
.end method

.method public z(Lcom/oplus/vfxsdk/naive/coe/engine/Texture;)V
    .locals 3

    const-string v0, "texture"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/naive/a;->l()Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeObject;->getNativeHandle()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/vfxsdk/naive/coe/engine/NativeEngine;->releaseObject(J)V

    sget-object p1, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
