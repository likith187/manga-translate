.class public Lcom/google/android/gms/common/internal/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/d$d;->a:Lcom/google/android/gms/common/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->H0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d$d;->a:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->A()Ljava/util/Set;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/internal/d;->c(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/d$d;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/d;->S(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/internal/d$d;->a:Lcom/google/android/gms/common/internal/d;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/d;->S(Lcom/google/android/gms/common/internal/d;)Lcom/google/android/gms/common/internal/d$b;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/internal/d$b;->b(Lcom/google/android/gms/common/ConnectionResult;)V

    :cond_1
    return-void
.end method
