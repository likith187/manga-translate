.class public abstract Ls_a/s_a/s_a/s_a$s_a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ls_a/s_a/s_a/s_a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls_a/s_a/s_a/s_a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s_a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls_a/s_a/s_a/s_a$s_a$a;
    }
.end annotation


# static fields
.field public static final s_a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "Y29tLmhleXRhcC5vcGVuaWQuSU9wZW5JRA=="

    invoke-static {v0}, Lca/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls_a/s_a/s_a/s_a$s_a;->s_a:Ljava/lang/String;

    return-void
.end method

.method public static s_a(Landroid/os/IBinder;)Ls_a/s_a/s_a/s_a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Ls_a/s_a/s_a/s_a$s_a;->s_a:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ls_a/s_a/s_a/s_a;

    if-eqz v1, :cond_1

    check-cast v0, Ls_a/s_a/s_a/s_a;

    return-object v0

    :cond_1
    new-instance v0, Ls_a/s_a/s_a/s_a$s_a$a;

    invoke-direct {v0, p0}, Ls_a/s_a/s_a/s_a$s_a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
