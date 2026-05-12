.class public Ll7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lh7/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll7/c;->a:Landroid/content/Context;

    new-instance v0, Lh7/a;

    invoke-direct {v0, p1}, Lh7/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ll7/c;->b:Lh7/a;

    return-void
.end method

.method private a(Li7/a;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Li7/a;->c()I

    move-result p1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Ll7/c;->e(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    const-string p0, "Tingle Authentication Failed Cause Caller Package Empty"

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tingle Authentication Failed Cause Descriptor Empty : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Ll7/c;->b:Lh7/a;

    invoke-virtual {p0, p1}, Lh7/a;->d(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private d()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(ILjava/lang/String;)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tingle Authentication Failed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lh7/c;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private f(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tingle verity "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string p1, "FAILED"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Caller : ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Descriptor : ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] Method : ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lj7/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Lj7/b;->c(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tingle verity SUCCESS cause descriptor is ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "], Caller Package ["

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lk7/d;->b(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private i(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Ll7/c;->b:Lh7/a;

    invoke-virtual {p0, p2}, Lh7/a;->a(Ljava/lang/String;)Li7/a;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, "tingle"

    invoke-virtual {p0, p2, p1}, Li7/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public h(Ljava/lang/String;I)Z
    .locals 5

    iget-object v0, p0, Ll7/c;->b:Lh7/a;

    invoke-virtual {v0}, Lh7/a;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Ll7/c;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {v0, v2, v3}, Lk7/e;->c(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Ll7/c;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lk7/b;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1}, Ll7/c;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-direct {p0}, Ll7/c;->d()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v2}, Ll7/c;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0, v0, p1}, Ll7/c;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Ll7/c;->b:Lh7/a;

    invoke-virtual {v1, v0, v2}, Lh7/a;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1, p2}, Lj7/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ll7/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1, v0, p1, p2}, Ll7/c;->f(ZLjava/lang/String;Ljava/lang/String;I)V

    return v1

    :cond_3
    iget-object v1, p0, Ll7/c;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lh7/b;->a(Landroid/content/Context;Ljava/lang/String;)Li7/a;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ll7/c;->a(Li7/a;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v4

    :cond_4
    iget-object v3, p0, Ll7/c;->b:Lh7/a;

    invoke-virtual {v3, v0, v1, v2}, Lh7/a;->e(Ljava/lang/String;Li7/a;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lj7/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ll7/c;->i(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1, v0, p1, p2}, Ll7/c;->f(ZLjava/lang/String;Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return v1
.end method
