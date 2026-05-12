.class public final Lcom/google/android/gms/internal/mlkit_common/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final i:Lcom/google/android/gms/internal/mlkit_common/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/mlkit_common/a0;

.field private final d:Lf5/j;

.field private final e:Lw3/i;

.field private final f:Lw3/i;

.field private final g:Ljava/lang/String;

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "optional-module-barcode"

    const-string v1, "com.google.android.gms.vision.barcode"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/h;->zzc(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_common/h;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/h0;->i:Lcom/google/android/gms/internal/mlkit_common/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf5/j;Lcom/google/android/gms/internal/mlkit_common/a0;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->a:Ljava/lang/String;

    invoke-static {p1}, Lf5/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->d:Lf5/j;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->c:Lcom/google/android/gms/internal/mlkit_common/a0;

    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/r0;->a()Lcom/google/android/gms/internal/mlkit_common/r0;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->g:Ljava/lang/String;

    invoke-static {}, Lf5/f;->a()Lf5/f;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/f0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_common/f0;-><init>(Lcom/google/android/gms/internal/mlkit_common/h0;)V

    invoke-virtual {p3, v0}, Lf5/f;->b(Ljava/util/concurrent/Callable;)Lw3/i;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->e:Lw3/i;

    invoke-static {}, Lf5/f;->a()Lf5/f;

    move-result-object p3

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/g0;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/mlkit_common/g0;-><init>(Lf5/j;)V

    invoke-virtual {p3, v0}, Lf5/f;->b(Ljava/util/concurrent/Callable;)Lw3/i;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->f:Lw3/i;

    sget-object p2, Lcom/google/android/gms/internal/mlkit_common/h0;->i:Lcom/google/android/gms/internal/mlkit_common/h;

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/h;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/mlkit_common/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->h:I

    return-void
.end method


# virtual methods
.method final synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/common/internal/i;->a()Lcom/google/android/gms/common/internal/i;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/h0;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/internal/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
