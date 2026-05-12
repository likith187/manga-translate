.class public final Lcom/google/android/gms/internal/mlkit_language_id_common/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/b;


# static fields
.field private static final d:Lq4/d;

.field public static final synthetic e:I


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Lq4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/q;

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->d:Lq4/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->b:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->d:Lq4/d;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->c:Lq4/d;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Class;Lq4/d;)Lr4/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final b()Lcom/google/android/gms/internal/mlkit_language_id_common/s;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/s;

    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->b:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->c:Lq4/d;

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/mlkit_language_id_common/s;-><init>(Ljava/util/Map;Ljava/util/Map;Lq4/d;)V

    return-object v0
.end method
