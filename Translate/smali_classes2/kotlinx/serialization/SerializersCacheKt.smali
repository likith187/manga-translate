.class public final Lkotlinx/serialization/SerializersCacheKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ParametrizedSerializerCache<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/ParametrizedSerializerCache<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/SerializerCache<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/internal/SerializerCache<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/g;

    invoke-direct {v0}, Lkotlinx/serialization/g;-><init>()V

    invoke-static {v0}, Lkotlinx/serialization/internal/CachingKt;->createCache(Lw8/l;)Lkotlinx/serialization/internal/SerializerCache;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    new-instance v0, Lkotlinx/serialization/h;

    invoke-direct {v0}, Lkotlinx/serialization/h;-><init>()V

    invoke-static {v0}, Lkotlinx/serialization/internal/CachingKt;->createCache(Lw8/l;)Lkotlinx/serialization/internal/SerializerCache;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;

    new-instance v0, Lkotlinx/serialization/i;

    invoke-direct {v0}, Lkotlinx/serialization/i;-><init>()V

    invoke-static {v0}, Lkotlinx/serialization/internal/CachingKt;->createParametrizedCache(Lw8/p;)Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    new-instance v0, Lkotlinx/serialization/j;

    invoke-direct {v0}, Lkotlinx/serialization/j;-><init>()V

    invoke-static {v0}, Lkotlinx/serialization/internal/CachingKt;->createParametrizedCache(Lw8/p;)Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    return-void
.end method

.method private static final PARAMETRIZED_SERIALIZERS_CACHE$lambda$3(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 2

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlinx/serialization/SerializersKt;->serializersForParameters(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v1, Lkotlinx/serialization/k;

    invoke-direct {v1, p1}, Lkotlinx/serialization/k;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0, v1}, Lkotlinx/serialization/SerializersKt;->parametrizedSerializerOrNull(Lc9/c;Ljava/util/List;Lw8/a;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method private static final PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2(Ljava/util/List;)Lc9/e;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc9/j;

    invoke-interface {p0}, Lc9/j;->getClassifier()Lc9/e;

    move-result-object p0

    return-object p0
.end method

.method private static final PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 2

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleBuildersKt;->EmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlinx/serialization/SerializersKt;->serializersForParameters(Lkotlinx/serialization/modules/SerializersModule;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->b(Ljava/lang/Object;)V

    new-instance v1, Lkotlinx/serialization/l;

    invoke-direct {v1, p1}, Lkotlinx/serialization/l;-><init>(Ljava/util/List;)V

    invoke-static {p0, v0, v1}, Lkotlinx/serialization/SerializersKt;->parametrizedSerializerOrNull(Lc9/c;Ljava/util/List;Lw8/a;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static final PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4(Ljava/util/List;)Lc9/e;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc9/j;

    invoke-interface {p0}, Lc9/j;->getClassifier()Lc9/e;

    move-result-object p0

    return-object p0
.end method

.method private static final SERIALIZERS_CACHE$lambda$0(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->isInterface(Lc9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lc9/c;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move-object v0, p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static final SERIALIZERS_CACHE_NULLABLE$lambda$1(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/SerializersKt;->serializerOrNull(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->isInterface(Lc9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lc9/c;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->getNullable(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_2

    move-object v1, p0

    :cond_2
    return-object v1
.end method

.method public static synthetic a(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE$lambda$0(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lc9/c;)Lkotlinx/serialization/KSerializer;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE$lambda$1(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/util/List;)Lc9/e;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE$lambda$3$lambda$2(Ljava/util/List;)Lc9/e;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;
    .locals 0

    invoke-static {p0, p1}, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE$lambda$3(Lc9/c;Ljava/util/List;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/util/List;)Lc9/e;
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$lambda$5$lambda$4(Ljava/util/List;)Lc9/e;

    move-result-object p0

    return-object p0
.end method

.method public static final findCachedSerializer(Lc9/c;Z)Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            "Z)",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_1

    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    invoke-interface {p1, p0}, Lkotlinx/serialization/internal/SerializerCache;->get(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    sget-object p1, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/SerializerCache;

    invoke-interface {p1, p0}, Lkotlinx/serialization/internal/SerializerCache;->get(Lc9/c;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final findParametrizedCachedSerializer(Lc9/c;Ljava/util/List;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            "Ljava/util/List<",
            "+",
            "Lc9/j;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "clazz"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "types"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object p2, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    invoke-interface {p2, p0, p1}, Lkotlinx/serialization/internal/ParametrizedSerializerCache;->get-gIAlu-s(Lc9/c;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p2, Lkotlinx/serialization/SerializersCacheKt;->PARAMETRIZED_SERIALIZERS_CACHE_NULLABLE:Lkotlinx/serialization/internal/ParametrizedSerializerCache;

    invoke-interface {p2, p0, p1}, Lkotlinx/serialization/internal/ParametrizedSerializerCache;->get-gIAlu-s(Lc9/c;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static synthetic getPARAMETRIZED_SERIALIZERS_CACHE$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getPARAMETRIZED_SERIALIZERS_CACHE_NULLABLE$annotations()V
    .locals 0

    return-void
.end method

.method public static final getSERIALIZERS_CACHE()Lkotlinx/serialization/internal/SerializerCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/internal/SerializerCache<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/SerializersCacheKt;->SERIALIZERS_CACHE:Lkotlinx/serialization/internal/SerializerCache;

    return-object v0
.end method

.method public static synthetic getSERIALIZERS_CACHE$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getSERIALIZERS_CACHE_NULLABLE$annotations()V
    .locals 0

    return-void
.end method

.method public static final polymorphicIfInterface(Lc9/c;)Lkotlinx/serialization/PolymorphicSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc9/c;",
            ")",
            "Lkotlinx/serialization/PolymorphicSerializer<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlinx/serialization/internal/PlatformKt;->isInterface(Lc9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lkotlinx/serialization/PolymorphicSerializer;

    invoke-direct {v0, p0}, Lkotlinx/serialization/PolymorphicSerializer;-><init>(Lc9/c;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
