.class public abstract Lq7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lq7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq7/b;

    invoke-direct {v0}, Lq7/b;-><init>()V

    sput-object v0, Lq7/c;->a:Lq7/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 0

    sget-object p0, Lq7/c;->a:Lq7/b;

    invoke-virtual {p0, p1, p2, p3}, Lq7/b;->b(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object p0, Lq7/c;->a:Lq7/b;

    const-string v0, "ssoid"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lq7/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sget-object p0, Lq7/c;->a:Lq7/b;

    invoke-virtual {p0, p1, p2}, Lq7/b;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    sget-object p0, Lq7/c;->a:Lq7/b;

    invoke-virtual {p0, p1, p2, p3}, Lq7/b;->e(Ljava/lang/String;J)V

    return-void
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    sget-object p0, Lq7/c;->a:Lq7/b;

    invoke-virtual {p0, p1, p2}, Lq7/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
