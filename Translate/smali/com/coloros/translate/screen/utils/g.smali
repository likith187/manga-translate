.class public final Lcom/coloros/translate/screen/utils/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/g;

.field private static volatile a:Lt2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/g;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/g;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/g;->INSTANCE:Lcom/coloros/translate/screen/utils/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lt2/a;
    .locals 1

    sget-object v0, Lcom/coloros/translate/screen/utils/g;->a:Lt2/a;

    return-object v0
.end method

.method public static final b()Lt2/b$a;
    .locals 1

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lt2/b$a;->UNKNOWN:Lt2/b$a;

    return-object v0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/utils/g;->a:Lt2/a;

    if-nez v0, :cond_1

    const-string v0, "responsiveUIConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lt2/a;->l()Landroidx/lifecycle/y;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/y;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt2/b$a;

    if-nez v0, :cond_2

    sget-object v0, Lt2/b$a;->UNKNOWN:Lt2/b$a;

    :cond_2
    return-object v0
.end method

.method public static final c()Lt2/b$b;
    .locals 2

    invoke-static {}, Lcom/coloros/translate/screen/utils/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lt2/b$b;->SMALL:Lt2/b$b;

    return-object v0

    :cond_0
    sget-object v0, Lcom/coloros/translate/screen/utils/g;->a:Lt2/a;

    if-nez v0, :cond_1

    const-string v0, "responsiveUIConfig"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v0}, Lt2/a;->k()Lt2/b$b;

    move-result-object v0

    const-string v1, "getScreenType(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static final d()Z
    .locals 4

    sget-object v0, Lcom/coloros/translate/screen/utils/g;->a:Lt2/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0}, Lcom/coloros/translate/base/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lt2/a;->f(Landroid/content/Context;)Lt2/a;

    move-result-object v2

    const-string v3, "getDefault(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v2, Lcom/coloros/translate/screen/utils/g;->a:Lt2/a;

    new-instance v2, Lcom/coloros/translate/screen/utils/g$a;

    invoke-direct {v2}, Lcom/coloros/translate/screen/utils/g$a;-><init>()V

    invoke-virtual {v0, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return v1
.end method
