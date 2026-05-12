.class public Lcom/google/mlkit/nl/languageid/bundled/internal/ThickLanguageIdRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    const-class p0, Lj5/a;

    invoke-static {p0}, Lo4/c;->g(Ljava/lang/Class;)Lo4/c$b;

    move-result-object p0

    new-instance v0, Li5/a;

    invoke-direct {v0}, Li5/a;-><init>()V

    invoke-virtual {p0, v0}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lo4/c$b;->c()Lo4/c;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_language_id_bundled/i;->zbg(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_bundled/i;

    move-result-object p0

    return-object p0
.end method
