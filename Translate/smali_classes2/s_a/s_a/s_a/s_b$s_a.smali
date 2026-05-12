.class public abstract Ls_a/s_a/s_a/s_b$s_a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ls_a/s_a/s_a/s_b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls_a/s_a/s_a/s_b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s_a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls_a/s_a/s_a/s_b$s_a$a;
    }
.end annotation


# direct methods
.method public static s_a(Landroid/os/IBinder;)Ls_a/s_a/s_a/s_b;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.oplus.stdid.IStdID"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ls_a/s_a/s_a/s_b;

    if-eqz v1, :cond_1

    check-cast v0, Ls_a/s_a/s_a/s_b;

    return-object v0

    :cond_1
    new-instance v0, Ls_a/s_a/s_a/s_b$s_a$a;

    invoke-direct {v0, p0}, Ls_a/s_a/s_a/s_b$s_a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
