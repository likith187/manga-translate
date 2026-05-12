.class public final Lcom/google/android/gms/common/api/internal/m0;
.super Lcom/google/android/gms/signin/internal/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/e$a;
.implements Lcom/google/android/gms/common/api/e$b;


# static fields
.field private static final h:Lcom/google/android/gms/common/api/a$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Lcom/google/android/gms/common/api/a$a;

.field private final d:Ljava/util/Set;

.field private final e:Lcom/google/android/gms/common/internal/e;

.field private f:Lv3/e;

.field private g:Lcom/google/android/gms/common/api/internal/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lv3/d;->c:Lcom/google/android/gms/common/api/a$a;

    sput-object v0, Lcom/google/android/gms/common/api/internal/m0;->h:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/e;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/m0;->h:Lcom/google/android/gms/common/api/a$a;

    invoke-direct {p0}, Lcom/google/android/gms/signin/internal/c;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/m0;->b:Landroid/os/Handler;

    const-string p1, "ClientSettings must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->e:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/e;->e()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->d:Ljava/util/Set;

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->c:Lcom/google/android/gms/common/api/a$a;

    return-void
.end method

.method static bridge synthetic d(Lcom/google/android/gms/common/api/internal/m0;)Lcom/google/android/gms/common/api/internal/l0;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/google/android/gms/common/api/internal/m0;Lcom/google/android/gms/signin/internal/zak;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->D0()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->H0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/signin/internal/zak;->E0()Lcom/google/android/gms/common/internal/zav;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zav;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->D0()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->H0()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "SignInCoordinator"

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/l0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->m()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/zav;->E0()Lcom/google/android/gms/common/internal/IAccountAccessor;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m0;->d:Ljava/util/Set;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/l0;->b(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/l0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->m()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/l0;->d(I)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/l0;->c(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    invoke-interface {p1, p0}, Lv3/e;->f(Lcom/google/android/gms/signin/internal/zae;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/l0;)V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->e:Lcom/google/android/gms/common/internal/e;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/e;->i(Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/m0;->c:Lcom/google/android/gms/common/api/a$a;

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/m0;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->b:Landroid/os/Handler;

    iget-object v5, p0, Lcom/google/android/gms/common/api/internal/m0;->e:Lcom/google/android/gms/common/internal/e;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v5}, Lcom/google/android/gms/common/internal/e;->f()Lv3/a;

    move-result-object v6

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Ljava/lang/Object;Lcom/google/android/gms/common/api/e$a;Lcom/google/android/gms/common/api/e$b;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->g:Lcom/google/android/gms/common/api/internal/l0;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->d:Ljava/util/Set;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    invoke-interface {p0}, Lv3/e;->o()V

    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/m0;->b:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/common/api/internal/j0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/j0;-><init>(Lcom/google/android/gms/common/api/internal/m0;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final g()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->f:Lv3/e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/a$f;->m()V

    :cond_0
    return-void
.end method

.method public final zab(Lcom/google/android/gms/signin/internal/zak;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/k0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/k0;-><init>(Lcom/google/android/gms/common/api/internal/m0;Lcom/google/android/gms/signin/internal/zak;)V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m0;->b:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
