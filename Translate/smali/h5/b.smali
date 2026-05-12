.class public Lh5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh5/b$a;
    }
.end annotation


# static fields
.field public static final c:Lh5/b;


# instance fields
.field private final a:Ljava/lang/Float;

.field private final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh5/b$a;

    invoke-direct {v0}, Lh5/b$a;-><init>()V

    invoke-virtual {v0}, Lh5/b$a;->a()Lh5/b;

    move-result-object v0

    sput-object v0, Lh5/b;->c:Lh5/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lh5/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh5/b;->a:Ljava/lang/Float;

    iput-object p2, p0, Lh5/b;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lh5/b;->a:Ljava/lang/Float;

    return-object p0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lh5/b;->b:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lh5/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lh5/b;

    iget-object v1, p1, Lh5/b;->a:Ljava/lang/Float;

    iget-object v3, p0, Lh5/b;->a:Ljava/lang/Float;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lh5/b;->b:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lh5/b;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lh5/b;->a:Ljava/lang/Float;

    iget-object p0, p0, Lh5/b;->b:Ljava/util/concurrent/Executor;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->b([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
