.class public abstract Landroidx/core/app/a;
.super Lr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/a$a;,
        Landroidx/core/app/a$e;,
        Landroidx/core/app/a$b;,
        Landroidx/core/app/a$d;,
        Landroidx/core/app/a$c;
    }
.end annotation


# direct methods
.method public static k(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    return-void
.end method

.method public static l(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public static m(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public static n(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public static o(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-ge v3, v4, :cond_0

    aget-object v3, p1, v2

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission request for permissions "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not contain null or empty values"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    array-length v3, p1

    sub-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, p1

    :goto_1
    if-lez v2, :cond_6

    array-length v4, p1

    if-ne v2, v4, :cond_4

    return-void

    :cond_4
    move v2, v1

    :goto_2
    array-length v4, p1

    if-ge v1, v4, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v4, v2, 0x1

    aget-object v5, p1, v1

    aput-object v5, v3, v2

    move v2, v4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    instance-of v0, p0, Landroidx/core/app/a$e;

    if-eqz v0, :cond_7

    move-object v0, p0

    check-cast v0, Landroidx/core/app/a$e;

    invoke-interface {v0, p2}, Landroidx/core/app/a$e;->validateRequestPermissionsRequestCode(I)V

    :cond_7
    invoke-static {p0, p1, p2}, Landroidx/core/app/a$b;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method

.method public static p(Landroid/app/Activity;Landroidx/core/app/q;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/app/a$a;->c(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static q(Landroid/app/Activity;Landroidx/core/app/q;)V
    .locals 0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/core/app/a$a;->d(Landroid/app/Activity;Landroid/app/SharedElementCallback;)V

    return-void
.end method

.method public static r(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Landroidx/core/app/a$d;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1}, Landroidx/core/app/a$c;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {p0, p1}, Landroidx/core/app/a$b;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static s(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static t(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Landroidx/core/app/a$a;->e(Landroid/app/Activity;)V

    return-void
.end method
