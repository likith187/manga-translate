.class public Lq6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/epona/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/oplus/epona/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/oplus/epona/g;

    invoke-direct {p0}, Lcom/oplus/epona/g;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oplus/epona/g;->a(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.oppo.permission.safe.SECURITY"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method
