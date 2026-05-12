.class public abstract Lcom/oplus/vfxsdk/common/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/l;->a:Landroid/content/Context;

    const-string p1, "VFX:COELoader"

    iput-object p1, p0, Lcom/oplus/vfxsdk/common/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ZZ)V
    .locals 5

    const-string v0, "assetFile"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    sget-object v1, Lcom/oplus/vfxsdk/common/j;->INSTANCE:Lcom/oplus/vfxsdk/common/j;

    invoke-virtual {v1, p1}, Lcom/oplus/vfxsdk/common/j;->a(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oplus/vfxsdk/common/l;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/oplus/vfxsdk/common/l;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load assetFile:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    invoke-static {v1}, Lkotlin/io/b;->c(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-virtual {p0, p1, v2, p2, p3}, Lcom/oplus/vfxsdk/common/l;->b(Ljava/lang/String;[BZZ)Lcom/oplus/vfxsdk/common/COEData;

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v1, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/oplus/vfxsdk/common/l;->c(Lcom/oplus/vfxsdk/common/COEData;ZZ)V

    :goto_1
    return-void
.end method

.method protected final b(Ljava/lang/String;[BZZ)Lcom/oplus/vfxsdk/common/COEData;
    .locals 6

    const-string v0, "cacheKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/vfxsdk/common/j;->INSTANCE:Lcom/oplus/vfxsdk/common/j;

    invoke-virtual {v0, p1}, Lcom/oplus/vfxsdk/common/j;->a(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/oplus/vfxsdk/common/COEParse;

    invoke-direct {v1}, Lcom/oplus/vfxsdk/common/COEParse;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, ".coz"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5, v2, v3}, Lkotlin/text/r;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p2, v2}, Lcom/oplus/vfxsdk/common/COEParse;->parse([BZ)Lcom/oplus/vfxsdk/common/COEData;

    move-result-object v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/vfxsdk/common/j;->c(Ljava/lang/String;Lcom/oplus/vfxsdk/common/COEData;)V

    :cond_1
    invoke-virtual {p0, v1, p3, p4}, Lcom/oplus/vfxsdk/common/l;->c(Lcom/oplus/vfxsdk/common/COEData;ZZ)V

    return-object v1
.end method

.method protected abstract c(Lcom/oplus/vfxsdk/common/COEData;ZZ)V
.end method
