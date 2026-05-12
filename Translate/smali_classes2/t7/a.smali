.class public abstract Lt7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lb8/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform"

    return-object v0

    :cond_0
    invoke-static {}, Lt7/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    return-object v0
.end method

.method private static b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lt7/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lb8/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.epona.binder"

    return-object v0

    :cond_0
    invoke-static {}, Lt7/a;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lt7/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lb8/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.epona.ext_binder"

    return-object v0

    :cond_0
    invoke-static {}, Lt7/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static f()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lt7/b;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
