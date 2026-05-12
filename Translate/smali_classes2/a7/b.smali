.class public abstract La7/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, La7/b;->b:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, La7/b;->a:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhysicsWorld"

    invoke-static {v0, p0}, La7/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
