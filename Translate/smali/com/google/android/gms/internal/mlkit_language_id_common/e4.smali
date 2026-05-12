.class final Lcom/google/android/gms/internal/mlkit_language_id_common/e4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_language_id_common/e4;

.field private static final b:Lq4/c;

.field private static final c:Lq4/c;

.field private static final d:Lq4/c;

.field private static final e:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/e4;

    const-string v0, "inferenceCommonLogEvent"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->b:Lq4/c;

    const-string v0, "options"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->c:Lq4/c;

    const-string v0, "identifyLanguageResult"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->d:Lq4/c;

    const-string v0, "identifyPossibleLanguagesResult"

    invoke-static {v0}, Lq4/c;->a(Ljava/lang/String;)Lq4/c$b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->a(I)Lcom/google/android/gms/internal/mlkit_language_id_common/j;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_language_id_common/j;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq4/c$b;->b(Ljava/lang/annotation/Annotation;)Lq4/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lq4/c$b;->a()Lq4/c;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->e:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_language_id_common/n8;

    check-cast p2, Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->b:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n8;->a()Lcom/google/android/gms/internal/mlkit_language_id_common/w6;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->c:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n8;->b()Lcom/google/android/gms/internal/mlkit_language_id_common/c7;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->d:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n8;->c()Lcom/google/android/gms/internal/mlkit_language_id_common/k8;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    sget-object p0, Lcom/google/android/gms/internal/mlkit_language_id_common/e4;->e:Lq4/c;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_language_id_common/n8;->d()Lcom/google/android/gms/internal/mlkit_language_id_common/l8;

    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Lq4/e;->d(Lq4/c;Ljava/lang/Object;)Lq4/e;

    return-void
.end method
