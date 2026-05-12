.class public Lg5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/android/gms/common/internal/h;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;


# instance fields
.field private final a:Lf5/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/h;

    const-string v1, "ModelFileHelper"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lg5/a;->b:Lcom/google/android/gms/common/internal/h;

    const-string v0, "translate"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.google.mlkit.%s.models"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg5/a;->c:Ljava/lang/String;

    const-string v0, "custom"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg5/a;->d:Ljava/lang/String;

    const-string v0, "base"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg5/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lf5/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/a;->a:Lf5/g;

    return-void
.end method
