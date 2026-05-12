.class public Lh7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/LruCache;

.field private final b:Landroid/content/Context;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/LruCache;

    sget v1, Lg7/a;->b:I

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lh7/a;->a:Landroid/util/LruCache;

    iput-object p1, p0, Lh7/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li7/a;
    .locals 0

    iget-object p0, p0, Lh7/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/a;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lh7/a;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lk7/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lh7/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li7/a;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Li7/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li7/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Li7/a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lh7/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/a;->b:Landroid/content/Context;

    const-string v1, "android"

    invoke-static {v0, v1}, Lk7/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh7/a;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lh7/a;->c:Ljava/lang/String;

    const-string v0, "72:8E:6B:5E:6D:3F:AA:00:E2:DE:12:CC:46:4D:02:7B:FF:E2:DD:87:32:99:67:F7:20:28:F2:FD:13:C1:22:E9"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lh7/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh7/a;->b:Landroid/content/Context;

    const-string v1, "android"

    invoke-static {v0, v1}, Lk7/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lh7/a;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lh7/a;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public e(Ljava/lang/String;Li7/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Li7/a;->e()V

    invoke-virtual {p2}, Li7/a;->h()V

    invoke-virtual {p2, p3}, Li7/a;->g(Ljava/lang/String;)V

    iget-object p0, p0, Lh7/a;->a:Landroid/util/LruCache;

    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
