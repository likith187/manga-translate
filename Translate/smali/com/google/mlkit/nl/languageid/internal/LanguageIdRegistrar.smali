.class public Lcom/google/mlkit/nl/languageid/internal/LanguageIdRegistrar;
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
    .locals 2

    const-class p0, Lcom/google/mlkit/nl/languageid/internal/d;

    invoke-static {p0}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v0

    const-class v1, Lj5/a;

    invoke-static {v1}, Lo4/o;->i(Ljava/lang/Class;)Lo4/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object v0

    sget-object v1, Lj5/c;->a:Lj5/c;

    invoke-virtual {v0, v1}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lo4/c$b;->c()Lo4/c;

    move-result-object v0

    const-class v1, Lcom/google/mlkit/nl/languageid/internal/a$a;

    invoke-static {v1}, Lo4/c;->a(Ljava/lang/Class;)Lo4/c$b;

    move-result-object v1

    invoke-static {p0}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object p0

    invoke-virtual {v1, p0}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object p0

    const-class v1, Lf5/d;

    invoke-static {v1}, Lo4/o;->g(Ljava/lang/Class;)Lo4/o;

    move-result-object v1

    invoke-virtual {p0, v1}, Lo4/c$b;->b(Lo4/o;)Lo4/c$b;

    move-result-object p0

    sget-object v1, Lj5/d;->a:Lj5/d;

    invoke-virtual {p0, v1}, Lo4/c$b;->d(Lo4/g;)Lo4/c$b;

    move-result-object p0

    invoke-virtual {p0}, Lo4/c$b;->c()Lo4/c;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/nb;->zzi(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id_common/nb;

    move-result-object p0

    return-object p0
.end method
