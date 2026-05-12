.class public final Lcom/oplus/vfxsdk/common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/oplus/vfxsdk/common/j;

.field private static final a:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/vfxsdk/common/j;

    invoke-direct {v0}, Lcom/oplus/vfxsdk/common/j;-><init>()V

    sput-object v0, Lcom/oplus/vfxsdk/common/j;->INSTANCE:Lcom/oplus/vfxsdk/common/j;

    sget-object v0, Lcom/oplus/vfxsdk/common/j$a;->INSTANCE:Lcom/oplus/vfxsdk/common/j$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/oplus/vfxsdk/common/j;->a:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final b()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    sget-object p0, Lcom/oplus/vfxsdk/common/j;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/oplus/vfxsdk/common/COEData;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/j;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/vfxsdk/common/COEData;

    return-object p0
.end method

.method public final c(Ljava/lang/String;Lcom/oplus/vfxsdk/common/COEData;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coeData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/vfxsdk/common/j;->b()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
