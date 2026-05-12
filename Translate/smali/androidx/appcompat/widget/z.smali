.class public final Landroidx/appcompat/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/z$b;,
        Landroidx/appcompat/widget/z$c;,
        Landroidx/appcompat/widget/z$a;
    }
.end annotation


# static fields
.field private static final h:Landroid/graphics/PorterDuff$Mode;

.field private static i:Landroidx/appcompat/widget/z;

.field private static final j:Landroidx/appcompat/widget/z$a;


# instance fields
.field private a:Ljava/util/WeakHashMap;

.field private b:Landroidx/collection/i;

.field private c:Landroidx/collection/j;

.field private final d:Ljava/util/WeakHashMap;

.field private e:Landroid/util/TypedValue;

.field private f:Z

.field private g:Landroidx/appcompat/widget/z$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/z;->h:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Landroidx/appcompat/widget/z$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/z$a;-><init>(I)V

    sput-object v0, Landroidx/appcompat/widget/z;->j:Landroidx/appcompat/widget/z$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p4

    if-eqz p4, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/z;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/f;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/collection/f;

    invoke-direct {v0}, Landroidx/collection/f;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/widget/z;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, p3, p1}, Landroidx/collection/f;->i(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private b(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->a:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/j;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/collection/j;

    invoke-direct {v0}, Landroidx/collection/j;-><init>()V

    iget-object p0, p0, Landroidx/appcompat/widget/z;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/j;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/widget/z;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/z;->f:Z

    sget v0, Landroidx/appcompat/resources/R$drawable;->abc_vector_test:I

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/z;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/appcompat/widget/z;->p(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/appcompat/widget/z;->f:Z

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static d(Landroid/util/TypedValue;)J
    .locals 4

    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget p0, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/util/TypedValue;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Landroidx/appcompat/widget/z;->d(Landroid/util/TypedValue;)J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Landroidx/appcompat/widget/z;->h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    iget-object v3, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/z$c;

    if-nez v3, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v3, p0, p1, p2}, Landroidx/appcompat/widget/z$c;->c(Landroidx/appcompat/widget/z;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v1, v2, p2}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    :cond_3
    return-object p2
.end method

.method private static f(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    invoke-static {p0, p1}, Landroidx/appcompat/widget/z;->k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized g()Landroidx/appcompat/widget/z;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/widget/z;

    invoke-direct {v1}, Landroidx/appcompat/widget/z;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z;

    invoke-static {v1}, Landroidx/appcompat/widget/z;->o(Landroidx/appcompat/widget/z;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Landroidx/appcompat/widget/z;->i:Landroidx/appcompat/widget/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private declared-synchronized h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/collection/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3}, Landroidx/collection/f;->e(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v0, p2, p3}, Landroidx/collection/f;->j(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v1

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public static declared-synchronized k(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3

    const-class v0, Landroidx/appcompat/widget/z;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/z;->j:Landroidx/appcompat/widget/z$a;

    invoke-virtual {v1, p0, p1}, Landroidx/appcompat/widget/z$a;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v2, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p0, p1, v2}, Landroidx/appcompat/widget/z$a;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object v2

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/z;->a:Ljava/util/WeakHashMap;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/collection/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroidx/collection/j;->e(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/content/res/ColorStateList;

    :cond_0
    return-object v0
.end method

.method private static o(Landroidx/appcompat/widget/z;)V
    .locals 0

    return-void
.end method

.method private static p(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    instance-of v0, p0, Landroidx/vectordrawable/graphics/drawable/g;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.graphics.drawable.VectorDrawable"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private q(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 10

    iget-object v0, p0, Landroidx/appcompat/widget/z;->b:Landroidx/collection/i;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroidx/collection/i;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroidx/appcompat/widget/z;->c:Landroidx/collection/j;

    const-string v2, "appcompat_skip_skip"

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroidx/collection/j;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroidx/appcompat/widget/z;->b:Landroidx/collection/i;

    invoke-virtual {v3, v0}, Landroidx/collection/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Landroidx/collection/j;

    invoke-direct {v0}, Landroidx/collection/j;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->c:Landroidx/collection/j;

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/util/TypedValue;

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/z;->e:Landroid/util/TypedValue;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-static {v0}, Landroidx/appcompat/widget/z;->d(Landroid/util/TypedValue;)J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5}, Landroidx/appcompat/widget/z;->h(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6

    :cond_4
    iget-object v7, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    :goto_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5

    if-eq v8, v3, :cond_5

    goto :goto_0

    :cond_5
    if-ne v8, v9, :cond_7

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Landroidx/appcompat/widget/z;->c:Landroidx/collection/j;

    invoke-virtual {v8, p2, v3}, Landroidx/collection/j;->a(ILjava/lang/Object;)V

    iget-object v8, p0, Landroidx/appcompat/widget/z;->b:Landroidx/collection/i;

    invoke-virtual {v8, v3}, Landroidx/collection/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/z$b;

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    invoke-interface {v3, p1, v1, v7, v8}, Landroidx/appcompat/widget/z$b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    if-eqz v6, :cond_8

    iget v0, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    invoke-direct {p0, p1, v4, v5, v6}, Landroidx/appcompat/widget/z;->a(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    goto :goto_3

    :cond_7
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v0, "No start tag found"

    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "ResourceManagerInternal"

    const-string v1, "Exception while inflating drawable"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_3
    if-nez v6, :cond_9

    iget-object p0, p0, Landroidx/appcompat/widget/z;->c:Landroidx/collection/j;

    invoke-virtual {p0, p2, v2}, Landroidx/collection/j;->a(ILjava/lang/Object;)V

    :cond_9
    return-object v6

    :cond_a
    return-object v1
.end method

.method private u(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/z;->l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lv/a;->r(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-static {p4, v0}, Lv/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/z;->n(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p4, p0}, Lv/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/z$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2, p4}, Landroidx/appcompat/widget/z$c;->e(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Landroidx/appcompat/widget/z;->w(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p3, :cond_2

    const/4 p4, 0x0

    :cond_2
    :goto_0
    return-object p4
.end method

.method static v(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/f0;[I)V
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-ne v1, p0, :cond_5

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/widget/f0;->d:Z

    if-nez v0, :cond_2

    iget-boolean v1, p1, Landroidx/appcompat/widget/f0;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_3

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/appcompat/widget/f0;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-boolean v1, p1, Landroidx/appcompat/widget/f0;->c:Z

    if-eqz v1, :cond_4

    iget-object p1, p1, Landroidx/appcompat/widget/f0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Landroidx/appcompat/widget/z;->h:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    invoke-static {v0, p1, p2}, Landroidx/appcompat/widget/z;->f(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_3
    return-void

    :cond_5
    const-string p0, "ResourceManagerInternal"

    const-string p1, "Mutated drawable is not the same instance as the input."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/widget/z;->j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized j(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/z;->c(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->q(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-static {p1, p2}, Lr/a;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/appcompat/widget/z;->u(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroidx/appcompat/widget/u;->b(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized l(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/z;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/z$c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Landroidx/appcompat/widget/z$c;->d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/z;->b(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method n(I)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/z$c;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroidx/appcompat/widget/z$c;->b(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public declared-synchronized r(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/z;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/collection/f;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/collection/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized s(Landroid/content/Context;Landroidx/appcompat/widget/n0;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p3}, Landroidx/appcompat/widget/z;->q(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/a0;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p3, p2, v0}, Landroidx/appcompat/widget/z;->u(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized t(Landroidx/appcompat/widget/z$c;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/z$c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method w(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/z;->g:Landroidx/appcompat/widget/z$c;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Landroidx/appcompat/widget/z$c;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
