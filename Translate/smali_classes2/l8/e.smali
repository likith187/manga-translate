.class public abstract Ll8/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "l8.e"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/google/gson/e;

    invoke-direct {v0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/e;->d()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/e;->e()Lcom/google/gson/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/e;->b()Lcom/google/gson/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Ll8/e;->a:Ljava/lang/String;

    const-string v1, "toString failed!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method
