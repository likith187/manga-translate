.class final Lcom/google/android/gms/common/internal/v;
.super Lcom/google/android/gms/common/internal/w;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/google/android/gms/common/api/internal/g;


# direct methods
.method constructor <init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/v;->a:Landroid/content/Intent;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/v;->b:Lcom/google/android/gms/common/api/internal/g;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/w;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/v;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/v;->b:Lcom/google/android/gms/common/api/internal/g;

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/g;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
