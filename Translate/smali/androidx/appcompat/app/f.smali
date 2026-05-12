.class public abstract Landroidx/appcompat/app/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/f$a;,
        Landroidx/appcompat/app/f$b;,
        Landroidx/appcompat/app/f$c;,
        Landroidx/appcompat/app/f$d;
    }
.end annotation


# static fields
.field static a:Landroidx/appcompat/app/f$c;

.field private static b:I

.field private static c:Lz/f;

.field private static f:Lz/f;

.field private static h:Ljava/lang/Boolean;

.field private static i:Z

.field private static final j:Landroidx/collection/b;

.field private static final k:Ljava/lang/Object;

.field private static final l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/appcompat/app/f$c;

    new-instance v1, Landroidx/appcompat/app/f$d;

    invoke-direct {v1}, Landroidx/appcompat/app/f$d;-><init>()V

    invoke-direct {v0, v1}, Landroidx/appcompat/app/f$c;-><init>(Ljava/util/concurrent/Executor;)V

    sput-object v0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/f$c;

    const/16 v0, -0x64

    sput v0, Landroidx/appcompat/app/f;->b:I

    const/4 v0, 0x0

    sput-object v0, Landroidx/appcompat/app/f;->c:Lz/f;

    sput-object v0, Landroidx/appcompat/app/f;->f:Lz/f;

    sput-object v0, Landroidx/appcompat/app/f;->h:Ljava/lang/Boolean;

    const/4 v0, 0x0

    sput-boolean v0, Landroidx/appcompat/app/f;->i:Z

    new-instance v0, Landroidx/collection/b;

    invoke-direct {v0}, Landroidx/collection/b;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->j:Landroidx/collection/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->k:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->l:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static D(Landroidx/appcompat/app/f;)V
    .locals 1

    sget-object v0, Landroidx/appcompat/app/f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/f;->E(Landroidx/appcompat/app/f;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static E(Landroidx/appcompat/app/f;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/app/f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/app/f;->j:Landroidx/collection/b;

    invoke-virtual {v1}, Landroidx/collection/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/f;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static P(Landroid/content/Context;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-static {}, Landroidx/appcompat/app/f;->i()Lz/f;

    move-result-object v1

    invoke-virtual {v1}, Lz/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/core/app/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "locale"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroidx/appcompat/app/f$a;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {v3, v1}, Landroidx/appcompat/app/f$b;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_1
    return-void
.end method

.method static Q(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroidx/appcompat/app/f;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    sget-boolean v0, Landroidx/appcompat/app/f;->i:Z

    if-nez v0, :cond_6

    sget-object v0, Landroidx/appcompat/app/f;->a:Landroidx/appcompat/app/f$c;

    new-instance v1, Landroidx/appcompat/app/e;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/f$c;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_1
    sget-object v0, Landroidx/appcompat/app/f;->l:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/app/f;->c:Lz/f;

    if-nez v1, :cond_4

    sget-object v1, Landroidx/appcompat/app/f;->f:Lz/f;

    if-nez v1, :cond_2

    invoke-static {p0}, Landroidx/core/app/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lz/f;->b(Ljava/lang/String;)Lz/f;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/f;->f:Lz/f;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_0
    sget-object p0, Landroidx/appcompat/app/f;->f:Lz/f;

    invoke-virtual {p0}, Lz/f;->e()Z

    move-result p0

    if-eqz p0, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    sget-object p0, Landroidx/appcompat/app/f;->f:Lz/f;

    sput-object p0, Landroidx/appcompat/app/f;->c:Lz/f;

    goto :goto_1

    :cond_4
    sget-object v2, Landroidx/appcompat/app/f;->f:Lz/f;

    invoke-virtual {v1, v2}, Lz/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroidx/appcompat/app/f;->c:Lz/f;

    sput-object v1, Landroidx/appcompat/app/f;->f:Lz/f;

    invoke-virtual {v1}, Lz/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroidx/core/app/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    monitor-exit v0

    :cond_6
    :goto_2
    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/app/f;->u(Landroid/content/Context;)V

    return-void
.end method

.method static b(Landroidx/appcompat/app/f;)V
    .locals 3

    sget-object v0, Landroidx/appcompat/app/f;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/f;->E(Landroidx/appcompat/app/f;)V

    sget-object v1, Landroidx/appcompat/app/f;->j:Landroidx/collection/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Landroid/app/Activity;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/f;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V

    return-object v0
.end method

.method public static g(Landroid/app/Dialog;Landroidx/appcompat/app/d;)Landroidx/appcompat/app/f;
    .locals 1

    new-instance v0, Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/AppCompatDelegateImpl;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V

    return-object v0
.end method

.method public static i()Lz/f;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroidx/appcompat/app/f;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroidx/appcompat/app/f$b;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v0}, Lz/f;->h(Landroid/os/LocaleList;)Lz/f;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/appcompat/app/f;->c:Lz/f;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lz/f;->d()Lz/f;

    move-result-object v0

    return-object v0
.end method

.method public static k()I
    .locals 1

    sget v0, Landroidx/appcompat/app/f;->b:I

    return v0
.end method

.method static n()Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroidx/appcompat/app/f;->j:Landroidx/collection/b;

    invoke-virtual {v0}, Landroidx/collection/b;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/f;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/f;->j()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "locale"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static p()Lz/f;
    .locals 1

    sget-object v0, Landroidx/appcompat/app/f;->c:Lz/f;

    return-object v0
.end method

.method static t(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Landroidx/appcompat/app/f;->h:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/AppLocalesMetadataHolderService;->a(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "autoStoreLocales"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Landroidx/appcompat/app/f;->h:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "AppCompatDelegate"

    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object p0, Landroidx/appcompat/app/f;->h:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object p0, Landroidx/appcompat/app/f;->h:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static synthetic u(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/app/f;->P(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Landroidx/appcompat/app/f;->i:Z

    return-void
.end method


# virtual methods
.method public abstract A(Landroid/os/Bundle;)V
.end method

.method public abstract B()V
.end method

.method public abstract C()V
.end method

.method public abstract F(I)Z
.end method

.method public abstract G(I)V
.end method

.method public abstract H(Landroid/view/View;)V
.end method

.method public abstract I(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract J(I)V
.end method

.method public K(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    return-void
.end method

.method public abstract L(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract M(I)V
.end method

.method public abstract N(Ljava/lang/CharSequence;)V
.end method

.method public abstract O(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end method

.method public abstract c(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public d(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->d(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract h(I)Landroid/view/View;
.end method

.method public abstract j()Landroid/content/Context;
.end method

.method public abstract l()Landroidx/appcompat/app/b;
.end method

.method public abstract m()I
.end method

.method public abstract o()Landroid/view/MenuInflater;
.end method

.method public abstract q()Landroidx/appcompat/app/a;
.end method

.method public abstract r()V
.end method

.method public abstract s()V
.end method

.method public abstract v(Landroid/content/res/Configuration;)V
.end method

.method public abstract w(Landroid/os/Bundle;)V
.end method

.method public abstract x()V
.end method

.method public abstract y(Landroid/os/Bundle;)V
.end method

.method public abstract z()V
.end method
