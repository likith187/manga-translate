.class public final Lcom/google/android/gms/common/api/internal/c0;
.super Lcom/google/android/gms/common/api/internal/q;
.source "SourceFile"


# instance fields
.field private final c:Lcom/google/android/gms/common/api/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/d;)V
    .locals 1

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/internal/q;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c0;->c:Lcom/google/android/gms/common/api/d;

    return-void
.end method
