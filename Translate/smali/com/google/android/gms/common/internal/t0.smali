.class public final Lcom/google/android/gms/common/internal/t0;
.super Lcom/google/android/gms/common/internal/g0;
.source "SourceFile"


# instance fields
.field final synthetic g:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/g0;-><init>(Lcom/google/android/gms/common/internal/d;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method protected final f(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->e0(Lcom/google/android/gms/common/internal/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/d;->a0(Lcom/google/android/gms/common/internal/d;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/d;->p:Lcom/google/android/gms/common/internal/d$c;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/d;->J(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method protected final g()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/t0;->g:Lcom/google/android/gms/common/internal/d;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d;->p:Lcom/google/android/gms/common/internal/d$c;

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->h:Lcom/google/android/gms/common/ConnectionResult;

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/internal/d$c;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p0, 0x1

    return p0
.end method
