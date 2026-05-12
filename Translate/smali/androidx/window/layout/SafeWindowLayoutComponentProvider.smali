.class public final Landroidx/window/layout/SafeWindowLayoutComponentProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ClassLoader;

.field private final b:Landroidx/window/core/ConsumerAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V
    .locals 1

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consumerAdapter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->b:Landroidx/window/core/ConsumerAdapter;

    return-void
.end method

.method public static final synthetic a(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Lc9/c;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->j(Ljava/lang/reflect/Method;Lc9/c;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic b(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->k(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic c(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Landroidx/window/core/ConsumerAdapter;
    .locals 0

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->b:Landroidx/window/core/ConsumerAdapter;

    return-object p0
.end method

.method public static final synthetic d(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->l()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->m()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->n()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->p()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Landroidx/window/layout/SafeWindowLayoutComponentProvider;Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->r(Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method private final i()Z
    .locals 1

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final j(Ljava/lang/reflect/Method;Lc9/c;)Z
    .locals 0

    invoke-static {p2}, Lv8/a;->a(Lc9/c;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->k(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z

    move-result p0

    return p0
.end method

.method private final k(Ljava/lang/reflect/Method;Ljava/lang/Class;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final l()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.FoldingFeature"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"androi\u2026s.layout.FoldingFeature\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final m()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.WindowExtensions"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"androi\u2026nsions.WindowExtensions\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final n()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.WindowExtensionsProvider"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"androi\u2026indowExtensionsProvider\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final p()Ljava/lang/Class;
    .locals 1

    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->a:Ljava/lang/ClassLoader;

    const-string v0, "androidx.window.extensions.layout.WindowLayoutComponent"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "loader.loadClass(\"androi\u2026t.WindowLayoutComponent\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final q()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isFoldingFeatureValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-direct {p0, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->v(Lw8/a;)Z

    move-result p0

    return p0
.end method

.method private final r(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    return p0
.end method

.method private final s()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowExtensionsValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-direct {p0, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->v(Lw8/a;)Z

    move-result p0

    return p0
.end method

.method private final t()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutComponentValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-direct {p0, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->v(Lw8/a;)Z

    move-result p0

    return p0
.end method

.method private final u()Z
    .locals 1

    new-instance v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1;

    invoke-direct {v0, p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isWindowLayoutProviderValid$1;-><init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V

    invoke-direct {p0, v0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->v(Lw8/a;)Z

    move-result p0

    return p0
.end method

.method private final v(Lw8/a;)Z
    .locals 0

    const/4 p0, 0x0

    :try_start_0
    invoke-interface {p1}, Lw8/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p0
.end method


# virtual methods
.method public final o()Landroidx/window/extensions/layout/WindowLayoutComponent;
    .locals 1

    invoke-direct {p0}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->i()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object p0

    invoke-interface {p0}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    check-cast p0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    goto :goto_0

    :cond_0
    move-object p0, v0

    check-cast p0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    :goto_0
    return-object v0
.end method
