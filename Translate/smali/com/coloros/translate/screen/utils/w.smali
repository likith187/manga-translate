.class public final Lcom/coloros/translate/screen/utils/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/w;

.field private static final a:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/w;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/w;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/w;->INSTANCE:Lcom/coloros/translate/screen/utils/w;

    sget-object v0, Lcom/coloros/translate/screen/utils/w$a;->INSTANCE:Lcom/coloros/translate/screen/utils/w$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/screen/utils/w;->a:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/animation/Animator;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelNoEnd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AnimatorUtils"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/animation/Animator;->removeAllListeners()V

    instance-of v0, p0, Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    :cond_1
    instance-of v0, p0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "getChildAnimations(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    invoke-static {v1}, Lcom/coloros/translate/screen/utils/w;->a(Landroid/animation/Animator;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    return-void
.end method

.method public static final b(Landroid/graphics/Rect;)V
    .locals 2

    const-string v0, "rect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/coloros/translate/screen/utils/w;->INSTANCE:Lcom/coloros/translate/screen/utils/w;

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/w;->c()Landroid/view/OplusWindowManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/OplusWindowManager;->getFocusedWindowFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/coloros/translate/screen/utils/w;->c()Landroid/view/OplusWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/OplusWindowManager;->getSplitAreaRegion()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public static final d(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/view/WindowManager;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    const-string v0, "getDefaultDisplay(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, -0x1

    invoke-static {p1, v0, v2, v3, p0}, Lk2/a;->d(Landroid/graphics/Rect;IIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "Utils"

    const-string v0, "getScreenshot UnSupportedApiVersionException"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static final e()Landroid/content/ComponentName;
    .locals 4

    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/OplusActivityManager;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTopComponentName : exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Utils"

    invoke-virtual {v1, v2, v0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final f()Z
    .locals 5

    const-string v0, "Utils"

    new-instance v1, Landroid/app/OplusActivityManager;

    invoke-direct {v1}, Landroid/app/OplusActivityManager;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/app/OplusActivityManager;->getAllTopAppInfos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/app/OplusAppInfo;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/oplus/app/OplusAppInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "packageName"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget v1, v1, Lcom/oplus/app/OplusAppInfo;->windowingMode:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_3

    sget-object v1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v3, "this is zoom window"

    invoke-virtual {v1, v0, v3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :goto_1
    sget-object v3, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    :cond_2
    invoke-virtual {v3, v0, v1}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v2
.end method


# virtual methods
.method public final c()Landroid/view/OplusWindowManager;
    .locals 0

    sget-object p0, Lcom/coloros/translate/screen/utils/w;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/OplusWindowManager;

    return-object p0
.end method
