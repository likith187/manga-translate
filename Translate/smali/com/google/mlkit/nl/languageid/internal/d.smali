.class public final Lcom/google/mlkit/nl/languageid/internal/d;
.super Lf5/i;
.source "SourceFile"


# instance fields
.field private d:Lj5/b;

.field private e:Lh5/b;

.field private final f:Landroid/content/Context;

.field private final g:Lj5/a;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj5/a;)V
    .locals 0

    invoke-direct {p0}, Lf5/i;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/d;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/d;->g:Lj5/a;

    invoke-interface {p2}, Lj5/a;->a()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/mlkit/nl/languageid/internal/d;->h:Z

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget-object v0, p0, Lf5/i;->a:Lf5/k;

    invoke-virtual {v0}, Lf5/k;->a()V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->d:Lj5/b;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->g:Lj5/a;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/d;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/d;->e:Lh5/b;

    invoke-interface {v0, v1, v2}, Lj5/a;->b(Landroid/content/Context;Lh5/b;)Lj5/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->d:Lj5/b;

    invoke-interface {v0}, Lj5/b;->a()V

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lf5/i;->a:Lf5/k;

    invoke-virtual {v0}, Lf5/k;->a()V

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->d:Lj5/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj5/b;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->d:Lj5/b;

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->d:Lj5/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/mlkit/nl/languageid/internal/d;->c()V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "und"

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->d:Lj5/b;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj5/b;

    invoke-interface {p0, p1, p2}, Lj5/b;->b(Ljava/lang/String;F)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;

    invoke-virtual {p1}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object p2

    const-string v0, "unknown"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/google/mlkit/nl/languageid/IdentifiedLanguage;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const-string p0, ""

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    const-string p1, "iw"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p0, "he"

    :cond_5
    return-object p0
.end method

.method final k(Lh5/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/d;->e:Lh5/b;

    return-void
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/mlkit/nl/languageid/internal/d;->h:Z

    return p0
.end method
