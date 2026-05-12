.class public final Lcom/coloros/translate/TranslationApplication;
.super Landroid/app/Application;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/TranslationApplication$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/coloros/translate/TranslationApplication$a;

.field public static c:Landroid/app/Application;


# instance fields
.field private a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/TranslationApplication$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/TranslationApplication$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/translate/TranslationApplication;->a:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/TranslationApplication;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/TranslationApplication;->a:Ljava/util/List;

    return-object p0
.end method

.method private final d()V
    .locals 6

    invoke-static {}, Lkotlinx/coroutines/o0;->b()Lkotlinx/coroutines/y;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/d0;->a(Lkotlin/coroutines/g;)Lkotlinx/coroutines/c0;

    move-result-object v0

    new-instance v3, Lcom/coloros/translate/TranslationApplication$b;

    const/4 p0, 0x0

    invoke-direct {v3, p0}, Lcom/coloros/translate/TranslationApplication$b;-><init>(Lkotlin/coroutines/d;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/c0;Lkotlin/coroutines/g;Lkotlinx/coroutines/e0;Lw8/p;ILjava/lang/Object;)Lkotlinx/coroutines/f1;

    return-void
.end method

.method private final e()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/TranslationApplication$e;

    invoke-direct {v0, p0}, Lcom/coloros/translate/TranslationApplication$e;-><init>(Lcom/coloros/translate/TranslationApplication;)V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private final f()V
    .locals 4

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v1, "TranslationApplication"

    const-string v2, "updateCameraShortcut"

    invoke-virtual {v0, v1, v2}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/coloros/translate/ui/a;->b()Z

    move-result v0

    const-string v1, "id_photo"

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "coloros.intent.action.SCANNER_MAIN_PAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "scanner_features_str"

    const-string v3, "Translate"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "default_feature"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "request_package_name"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ls/a$b;

    invoke-direct {v2, p0, v1}, Ls/a$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/coloros/translate/R$string;->photo_translation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ls/a$b;->e(Ljava/lang/CharSequence;)Ls/a$b;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$drawable;->icon_shortcut_photo:I

    invoke-static {p0, v2}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls/a$b;->b(Landroidx/core/graphics/drawable/IconCompat;)Ls/a$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Ls/a$b;->c(Landroid/content/Intent;)Ls/a$b;

    move-result-object v0

    invoke-virtual {v0}, Ls/a$b;->a()Ls/a;

    move-result-object v0

    invoke-static {p0, v0}, Ls/c;->e(Landroid/content/Context;Ls/a;)Z

    goto :goto_0

    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/o;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Ls/c;->f(Landroid/content/Context;Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    sget-object p1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/utils/m;->b(Landroid/content/Context;)V

    sget-object p1, Lcom/coloros/translate/TranslationApplication;->b:Lcom/coloros/translate/TranslationApplication$a;

    invoke-virtual {p1, p0}, Lcom/coloros/translate/TranslationApplication$a;->b(Landroid/app/Application;)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/coloros/translate/TranslationApplication;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :try_start_0
    sget-object p0, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishAllActivities failure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TranslationApplication"

    invoke-virtual {v0, v1, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/TranslationApplication;->a:Ljava/util/List;

    :try_start_0
    sget-object v0, Ln8/r;->Companion:Ln8/r$a;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    invoke-static {p0}, Ln8/r;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishOtherActivity failure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TranslationApplication"

    invoke-virtual {p1, v0, p0}, Lcom/coloros/translate/utils/c0$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "TranslationApplication"

    const-string v1, "onConfigurationChanged"

    invoke-virtual {p1, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/coloros/translate/TranslationApplication;->f()V

    sget-object p0, Lcom/coloros/translate/widget/k;->c:Lcom/coloros/translate/widget/k$b;

    invoke-virtual {p0}, Lcom/coloros/translate/widget/k$b;->a()Lcom/coloros/translate/widget/k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/widget/k;->k()V

    return-void
.end method

.method public onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    invoke-virtual {v0, p0}, Lcom/coloros/translate/utils/c0$a;->n(Landroid/content/Context;)V

    sget-object v0, Lcom/coloros/translate/TranslationApplication$c;->INSTANCE:Lcom/coloros/translate/TranslationApplication$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v0, v1, v2}, Lcom/coloros/translate/utils/z0;->d(JLw8/a;ILjava/lang/Object;)V

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    new-instance v1, Lcom/coloros/translate/TranslationApplication$d;

    invoke-direct {v1}, Lcom/coloros/translate/TranslationApplication$d;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/coloros/translate/base/a;->g(Landroid/app/Application;Lcom/coloros/translate/base/b;)V

    invoke-direct {p0}, Lcom/coloros/translate/TranslationApplication;->f()V

    invoke-direct {p0}, Lcom/coloros/translate/TranslationApplication;->e()V

    invoke-direct {p0}, Lcom/coloros/translate/TranslationApplication;->d()V

    return-void
.end method
