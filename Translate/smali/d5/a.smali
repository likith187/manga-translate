.class public final Ld5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lf5/g;

.field private final b:Lcom/google/android/gms/internal/mlkit_common/h0;


# direct methods
.method public constructor <init>(Lf5/g;)V
    .locals 1

    const-string v0, "common"

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/p0;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/h0;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/a;->a:Lf5/g;

    iput-object v0, p0, Ld5/a;->b:Lcom/google/android/gms/internal/mlkit_common/h0;

    return-void
.end method
