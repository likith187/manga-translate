.class public abstract Lcom/oplus/vfxsdk/common/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/vfxsdk/common/n$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/oplus/vfxsdk/common/n$a;

.field private static final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oplus/vfxsdk/common/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/vfxsdk/common/n$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/vfxsdk/common/n;->a:Lcom/oplus/vfxsdk/common/n$a;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/oplus/vfxsdk/common/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static final synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    sget-object v0, Lcom/oplus/vfxsdk/common/n;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
