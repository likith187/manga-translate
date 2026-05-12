.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

.field public final synthetic b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

.field public final synthetic c:Lcom/google/android/gms/internal/mlkit_language_id_common/g7;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/sa;Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/g7;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->b:Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/g7;

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/qa;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/sa;->b(Lcom/google/android/gms/internal/mlkit_language_id_common/ka;Lcom/google/android/gms/internal/mlkit_language_id_common/g7;Ljava/lang/String;)V

    return-void
.end method
