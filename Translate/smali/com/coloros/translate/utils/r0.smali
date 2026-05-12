.class public abstract Lcom/coloros/translate/utils/r0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/oplus/wrapper/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/wrapper/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/wrapper/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static d(Ljava/lang/String;I)I
    .locals 0

    invoke-static {p0, p1}, Lcom/oplus/wrapper/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method
