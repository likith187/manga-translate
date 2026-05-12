.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/b;


# instance fields
.field public final synthetic a:Lw2/g;


# direct methods
.method public synthetic constructor <init>(Lw2/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/k0;->a:Lw2/g;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    const-string v0, "proto"

    invoke-static {v0}, Lw2/b;->b(Ljava/lang/String;)Lw2/b;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/i0;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/i0;-><init>()V

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_common/k0;->a:Lw2/g;

    const-string v2, "FIREBASE_ML_SDK"

    const-class v3, [B

    invoke-interface {p0, v2, v3, v0, v1}, Lw2/g;->a(Ljava/lang/String;Ljava/lang/Class;Lw2/b;Lw2/e;)Lw2/f;

    move-result-object p0

    return-object p0
.end method
