.class final Lcom/google/android/gms/internal/mlkit_language_id_common/j4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# static fields
.field static final a:Lcom/google/android/gms/internal/mlkit_language_id_common/j4;

.field private static final b:Lq4/c;

.field private static final c:Lq4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/j4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/j4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/j4;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/j4;

    const-string v0, "detectorOptions"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/j4;->b:Lq4/c;

    const-string v0, "errorCode"

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

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/j4;->c:Lq4/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Landroidx/appcompat/app/t;->a(Ljava/lang/Object;)V

    check-cast p2, Lq4/e;

    const/4 p0, 0x0

    throw p0
.end method
