.class public final synthetic Lcom/google/android/gms/common/internal/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/k;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/internal/TelemetryData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/internal/TelemetryData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/service/b;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/common/internal/service/e;

    check-cast p2, Lw3/j;

    sget v0, Lcom/google/android/gms/common/internal/service/d;->n:I

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/d;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/service/a;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/service/b;->a:Lcom/google/android/gms/common/internal/TelemetryData;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/internal/service/a;->e(Lcom/google/android/gms/common/internal/TelemetryData;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lw3/j;->c(Ljava/lang/Object;)V

    return-void
.end method
