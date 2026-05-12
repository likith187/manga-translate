.class public final synthetic Lcom/google/mlkit/nl/languageid/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/google/mlkit/nl/languageid/internal/a;

.field public final synthetic b:Lcom/google/mlkit/nl/languageid/internal/d;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/mlkit/nl/languageid/internal/a;Lcom/google/mlkit/nl/languageid/internal/d;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/internal/b;->a:Lcom/google/mlkit/nl/languageid/internal/a;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/internal/b;->b:Lcom/google/mlkit/nl/languageid/internal/d;

    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/internal/b;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/mlkit/nl/languageid/internal/b;->d:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/internal/b;->a:Lcom/google/mlkit/nl/languageid/internal/a;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/internal/b;->b:Lcom/google/mlkit/nl/languageid/internal/d;

    iget-object v2, p0, Lcom/google/mlkit/nl/languageid/internal/b;->c:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/mlkit/nl/languageid/internal/b;->d:Z

    invoke-virtual {v0, v1, v2, p0}, Lcom/google/mlkit/nl/languageid/internal/a;->k(Lcom/google/mlkit/nl/languageid/internal/d;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
