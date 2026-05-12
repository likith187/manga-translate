.class public final Lcom/oplus/backup/sdk/common/utils/GsonUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/oplus/backup/sdk/common/utils/GsonUtil;

.field private static final gson$delegate:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/backup/sdk/common/utils/GsonUtil;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/common/utils/GsonUtil;-><init>()V

    sput-object v0, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->INSTANCE:Lcom/oplus/backup/sdk/common/utils/GsonUtil;

    sget-object v0, Lcom/oplus/backup/sdk/common/utils/GsonUtil$gson$2;->INSTANCE:Lcom/oplus/backup/sdk/common/utils/GsonUtil$gson$2;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->gson$delegate:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->INSTANCE:Lcom/oplus/backup/sdk/common/utils/GsonUtil;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->getGson()Lcom/google/gson/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/d;->n(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getGson()Lcom/google/gson/d;
    .locals 0

    sget-object p0, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->gson$delegate:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/d;

    return-object p0
.end method

.method public static final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    const-string v0, "any"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->INSTANCE:Lcom/oplus/backup/sdk/common/utils/GsonUtil;

    invoke-direct {v0}, Lcom/oplus/backup/sdk/common/utils/GsonUtil;->getGson()Lcom/google/gson/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/d;->v(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "gson.toJson(any)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
