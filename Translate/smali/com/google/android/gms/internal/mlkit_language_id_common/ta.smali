.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/ta;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/e;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/ua;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ta;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    iput-wide p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ta;->b:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ta;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/ua;

    iget-wide v1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/ta;->b:J

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/ua;->b(JLjava/lang/Exception;)V

    return-void
.end method
