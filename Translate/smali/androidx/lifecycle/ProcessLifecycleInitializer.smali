.class public final Landroidx/lifecycle/ProcessLifecycleInitializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu0/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0

    invoke-static {}, Lkotlin/collections/o;->h()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic b(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/ProcessLifecycleInitializer;->c(Landroid/content/Context;)Landroidx/lifecycle/s;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/content/Context;)Landroidx/lifecycle/s;
    .locals 1

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/startup/a;->e(Landroid/content/Context;)Landroidx/startup/a;

    move-result-object p0

    const-string v0, "getInstance(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroidx/lifecycle/ProcessLifecycleInitializer;

    invoke-virtual {p0, v0}, Landroidx/startup/a;->g(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/lifecycle/o;->a(Landroid/content/Context;)V

    sget-object p0, Landroidx/lifecycle/e0;->l:Landroidx/lifecycle/e0$b;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/e0$b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/lifecycle/e0$b;->a()Landroidx/lifecycle/s;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name=\'androidx.lifecycle.ProcessLifecycleInitializer\'\n                   android:value=\'androidx.startup\' />\n               under InitializationProvider in your AndroidManifest.xml"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
