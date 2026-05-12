.class public Lcom/google/android/gms/common/internal/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/internal/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/internal/o;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/o;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/o$a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/o;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/internal/s;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/google/android/gms/common/internal/o$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/o$a;->a:Ljava/lang/String;

    return-object p0
.end method
