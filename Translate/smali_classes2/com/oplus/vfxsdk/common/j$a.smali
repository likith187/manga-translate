.class final Lcom/oplus/vfxsdk/common/j$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/vfxsdk/common/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/vfxsdk/common/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/common/j$a;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/j$a;-><init>()V

    sput-object v0, Lcom/oplus/vfxsdk/common/j$a;->INSTANCE:Lcom/oplus/vfxsdk/common/j$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/oplus/vfxsdk/common/j$a;->invoke()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/vfxsdk/common/COEData;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method
