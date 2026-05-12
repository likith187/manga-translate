.class public Lh5/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Float;

.field private b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lh5/b;
    .locals 3

    new-instance v0, Lh5/b;

    iget-object v1, p0, Lh5/b$a;->a:Ljava/lang/Float;

    iget-object p0, p0, Lh5/b$a;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lh5/b;-><init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lh5/d;)V

    return-object v0
.end method

.method public b(F)Lh5/b$a;
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Threshold value %f should be between 0 and 1"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/common/internal/k;->c(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lh5/b$a;->a:Ljava/lang/Float;

    return-object p0
.end method
