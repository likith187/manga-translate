.class public abstract Lv0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lv0/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv0/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static b()V
    .locals 0

    invoke-static {}, Lv0/b;->b()V

    return-void
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lv0/c;->a()Z

    move-result v0

    return v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
