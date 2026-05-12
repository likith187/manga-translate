.class public final synthetic Lcom/google/android/gms/internal/mlkit_language_id_common/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/mlkit_language_id_common/q;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_language_id_common/q;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_language_id_common/q;->a:Lcom/google/android/gms/internal/mlkit_language_id_common/q;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lq4/e;

    sget p0, Lcom/google/android/gms/internal/mlkit_language_id_common/r;->e:I

    new-instance p0, Lq4/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Couldn\'t find encoder for type "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lq4/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method
