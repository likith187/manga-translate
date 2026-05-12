.class public abstract Lp6/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp6/b$c;,
        Lp6/b$b;
    }
.end annotation


# direct methods
.method private static a(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    invoke-static {}, Lp6/a;->e()Lp6/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lp6/a;->c(Lp6/b$c;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lp6/a;->b(Lp6/b$c;)Lp6/b$b;

    move-result-object v1

    sget-object v2, Lp6/b$b;->CACHE_ONLY:Lp6/b$b;

    if-eq v1, v2, :cond_0

    invoke-static {p1}, Lp6/b;->g(Lp6/b$c;)Landroid/net/Uri;

    move-result-object v4

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    const-string v6, "featurename=?"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lp6/b$c;->STATIC_COMPONENT:Lp6/b$c;

    invoke-static {p0, v0, p1, p2}, Lp6/b;->c(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "boolean"

    invoke-static {p0, p1, p2, v0}, Lp6/b;->f(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getBoolean: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static d(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lp6/b$c;->STATIC_COMPONENT:Lp6/b$c;

    invoke-static {p0, v0, p1, p2}, Lp6/b;->e(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;I)I
    .locals 1

    const-string v0, "int"

    invoke-static {p0, p1, p2, v0}, Lp6/b;->f(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "AppFeatureProviderUtils"

    const-string p1, "getInt: getStringForFeature return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static f(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p3, :cond_6

    invoke-static {p0, p1, p2}, Lp6/b;->a(Landroid/content/ContentResolver;Lp6/b$c;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_0
    const-string p1, "parameters"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, ";"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-lez p2, :cond_4

    array-length p2, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_3
    const-string p1, ""

    move-object v0, p1

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_5
    :goto_2
    if-eqz p0, :cond_6

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0
.end method

.method static g(Lp6/b$c;)Landroid/net/Uri;
    .locals 2

    const-string v0, "content://com.oplus.customize.coreapp.configmanager.configprovider.AppFeatureProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lp6/b$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "app_feature_second"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "getUriForFeatureID featureID is not support"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "app_feature_first"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "app_feature"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
