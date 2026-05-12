.class final Lcom/google/android/gms/internal/mlkit_language_id_common/lb;
.super Lcom/google/android/gms/internal/mlkit_language_id_common/fb;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/gms/internal/mlkit_language_id_common/nb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id_common/nb;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/mlkit_language_id_common/fb;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/lb;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/lb;->c:Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
