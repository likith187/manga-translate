.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/mlkit/nl/languageid/internal/a;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

.field public final synthetic e:Lcom/google/android/gms/internal/mlkit_language_id_common/k8;


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/nl/languageid/internal/a;JZLcom/google/android/gms/internal/mlkit_language_id_common/f7;Lcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/c;->a:Lcom/google/mlkit/nl/languageid/internal/a;

    iput-wide p2, p0, Lcom/google/mlkit/nl/languageid/internal/c;->b:J

    iput-boolean p4, p0, Lcom/google/mlkit/nl/languageid/internal/c;->c:Z

    iput-object p5, p0, Lcom/google/mlkit/nl/languageid/internal/c;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    iput-object p7, p0, Lcom/google/mlkit/nl/languageid/internal/c;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/k8;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/mlkit_language_id_common/ka;
    .locals 7

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/c;->a:Lcom/google/mlkit/nl/languageid/internal/a;

    iget-wide v1, p0, Lcom/google/mlkit/nl/languageid/internal/c;->b:J

    iget-boolean v3, p0, Lcom/google/mlkit/nl/languageid/internal/c;->c:Z

    iget-object v4, p0, Lcom/google/mlkit/nl/languageid/internal/c;->d:Lcom/google/android/gms/internal/mlkit_language_id_common/f7;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/mlkit/nl/languageid/internal/c;->e:Lcom/google/android/gms/internal/mlkit_language_id_common/k8;

    invoke-virtual/range {v0 .. v6}, Lcom/google/mlkit/nl/languageid/internal/a;->i(JZLcom/google/android/gms/internal/mlkit_language_id_common/f7;Lcom/google/android/gms/internal/mlkit_language_id_common/l8;Lcom/google/android/gms/internal/mlkit_language_id_common/k8;)Lcom/google/android/gms/internal/mlkit_language_id_common/ka;

    move-result-object p0

    return-object p0
.end method
