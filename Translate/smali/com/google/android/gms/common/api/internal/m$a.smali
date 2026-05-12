.class public Lcom/google/android/gms/common/api/internal/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/common/api/internal/k;

.field private b:Z

.field private c:[Lcom/google/android/gms/common/Feature;

.field private d:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->b:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->d:I

    return-void
.end method

.method static bridge synthetic e(Lcom/google/android/gms/common/api/internal/m$a;)Lcom/google/android/gms/common/api/internal/k;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/m$a;->a:Lcom/google/android/gms/common/api/internal/k;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/common/api/internal/m;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/m$a;->a:Lcom/google/android/gms/common/api/internal/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "execute parameter required"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/k;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/common/api/internal/n0;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/m$a;->c:[Lcom/google/android/gms/common/Feature;

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/m$a;->b:Z

    iget v3, p0, Lcom/google/android/gms/common/api/internal/m$a;->d:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/n0;-><init>(Lcom/google/android/gms/common/api/internal/m$a;[Lcom/google/android/gms/common/Feature;ZI)V

    return-object v0
.end method

.method public b(Lcom/google/android/gms/common/api/internal/k;)Lcom/google/android/gms/common/api/internal/m$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->a:Lcom/google/android/gms/common/api/internal/k;

    return-object p0
.end method

.method public c(Z)Lcom/google/android/gms/common/api/internal/m$a;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->b:Z

    return-object p0
.end method

.method public varargs d([Lcom/google/android/gms/common/Feature;)Lcom/google/android/gms/common/api/internal/m$a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/m$a;->c:[Lcom/google/android/gms/common/Feature;

    return-object p0
.end method
