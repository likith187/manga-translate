.class public final Lcom/google/android/gms/common/internal/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f1;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/f1;->a:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/f1;->c:Z

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/f1;->b:Ljava/lang/String;

    return-object p0
.end method

.method final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/f1;->a:Ljava/lang/String;

    return-object p0
.end method

.method final c()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/f1;->c:Z

    return p0
.end method
