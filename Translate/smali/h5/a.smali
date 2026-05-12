.class public abstract Lh5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lh5/b;)Lh5/c;
    .locals 2

    const-string v0, "LanguageIdentificationOptions can not be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/k;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lf5/g;->c()Lf5/g;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/a$a;

    invoke-virtual {v0, v1}, Lf5/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/a$a;

    invoke-virtual {v0, p0}, Lcom/google/mlkit/nl/languageid/internal/a$a;->a(Lh5/b;)Lh5/c;

    move-result-object p0

    return-object p0
.end method
