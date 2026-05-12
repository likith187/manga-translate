.class public abstract Lcom/google/android/gms/common/images/ImageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/ImageManager$ImageReceiver;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/images/ImageManager;->b:Ljava/util/HashSet;

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/common/images/ImageManager;)Landroid/content/Context;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/common/images/ImageManager;)Lt3/e;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic e()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/images/ImageManager;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic g(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/Map;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method static bridge synthetic h(Lcom/google/android/gms/common/images/ImageManager;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
