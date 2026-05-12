.class final Lcom/google/android/gms/common/api/internal/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/internal/w;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/w;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/v;->a:Lcom/google/android/gms/common/api/internal/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/v;->a:Lcom/google/android/gms/common/api/internal/w;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/w;->a:Lcom/google/android/gms/common/api/internal/x;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/x;->u(Lcom/google/android/gms/common/api/internal/x;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/x;->u(Lcom/google/android/gms/common/api/internal/x;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, " disconnecting because it was signed out."

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/a$f;->d(Ljava/lang/String;)V

    return-void
.end method
