.class public abstract Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lc9/c;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lc9/c;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
