.class public Lcom/google/android/gms/common/api/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/l;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/d$a;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/d$a$a;->a:Lcom/google/android/gms/common/api/internal/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/d$a$a;->a:Lcom/google/android/gms/common/api/internal/l;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/d$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/d$a$a;->b:Landroid/os/Looper;

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/d$a;

    iget-object v1, p0, Lcom/google/android/gms/common/api/d$a$a;->a:Lcom/google/android/gms/common/api/internal/l;

    iget-object p0, p0, Lcom/google/android/gms/common/api/d$a$a;->b:Landroid/os/Looper;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, v2}, Lcom/google/android/gms/common/api/d$a;-><init>(Lcom/google/android/gms/common/api/internal/l;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/h;)V

    return-object v0
.end method
