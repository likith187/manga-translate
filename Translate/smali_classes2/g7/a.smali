.class public abstract Lg7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:J = 0x6ddd00L

.field public static b:I = 0x28


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lk7/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oplus.appplatform"

    return-object v0

    :cond_0
    invoke-static {}, Lg7/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static b()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lg7/b;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
