.class abstract Lcom/oplus/utils/reflect/BaseRef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/utils/reflect/IBaseRef;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/oplus/utils/reflect/IBaseRef;"
    }
.end annotation


# static fields
.field static final DEFAULT_TYPES:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private mStub:Ljava/lang/Object;

.field private final mType:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/utils/reflect/BaseRef;->DEFAULT_TYPES:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    const-class v3, Ljava/lang/Short;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-class v3, Ljava/lang/Long;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const-class v3, Ljava/lang/Float;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-class v3, Ljava/lang/Double;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const-class v3, Ljava/lang/Byte;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/utils/reflect/BaseRef;->mStub:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/utils/reflect/BaseRef;->mName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oplus/utils/reflect/BaseRef;->getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utils/reflect/BaseRef;->mType:Ljava/lang/reflect/Type;

    invoke-virtual {p0}, Lcom/oplus/utils/reflect/BaseRef;->initDefaultValue()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/utils/reflect/BaseRef;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method private getGenericType(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Type;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    array-length v0, p1

    if-lez v0, :cond_0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public bindStub(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/utils/reflect/BaseRef;->mStub:Ljava/lang/Object;

    return-void
.end method

.method checkStub(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/oplus/utils/reflect/IBaseRef;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    iget-object p0, p0, Lcom/oplus/utils/reflect/BaseRef;->mStub:Ljava/lang/Object;

    return-object p0
.end method

.method getDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/utils/reflect/BaseRef;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oplus/utils/reflect/BaseRef;->mName:Ljava/lang/String;

    return-object p0
.end method

.method initDefaultValue()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/utils/reflect/BaseRef;->DEFAULT_TYPES:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/oplus/utils/reflect/BaseRef;->mType:Ljava/lang/reflect/Type;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
