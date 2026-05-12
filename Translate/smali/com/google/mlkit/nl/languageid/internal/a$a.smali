.class public final Lcom/google/mlkit/nl/languageid/internal/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/nl/languageid/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

.field private final b:Lcom/google/mlkit/nl/languageid/internal/d;

.field private final c:Lf5/d;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/nl/languageid/internal/d;Lf5/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->b:Lcom/google/mlkit/nl/languageid/internal/d;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->c:Lf5/d;

    const/4 p2, 0x1

    invoke-virtual {p1}, Lcom/google/mlkit/nl/languageid/internal/d;->l()Z

    move-result p1

    if-eq p2, p1, :cond_0

    const-string p1, "play-services-mlkit-language-id"

    goto :goto_0

    :cond_0
    const-string p1, "language-id"

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/db;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    return-void
.end method


# virtual methods
.method public a(Lh5/b;)Lh5/c;
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->b:Lcom/google/mlkit/nl/languageid/internal/d;

    invoke-virtual {v0, p1}, Lcom/google/mlkit/nl/languageid/internal/d;->k(Lh5/b;)V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->b:Lcom/google/mlkit/nl/languageid/internal/d;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/sa;

    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/internal/a$a;->c:Lf5/d;

    invoke-static {p1, v0, v1, p0}, Lcom/google/mlkit/nl/languageid/internal/a;->c(Lh5/b;Lcom/google/mlkit/nl/languageid/internal/d;Lcom/google/android/gms/internal/mlkit_language_id_common/sa;Lf5/d;)Lh5/c;

    move-result-object p0

    return-object p0
.end method
