.class public final Lcom/oplus/aiunit/translation/extend/expandparams/TranslateConfigExpandBuilder$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/translation/extend/expandparams/TranslateConfigExpandBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/oplus/aiunit/translation/extend/expandparams/TranslateConfigExpandBuilder$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromMap(Ljava/util/Map;)Lcom/oplus/aiunit/translation/extend/expandparams/SynthesizeTextExpandBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/oplus/aiunit/translation/extend/expandparams/SynthesizeTextExpandBuilder;"
        }
    .end annotation

    const-string p0, "map"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/translation/extend/expandparams/SynthesizeTextExpandBuilder;

    invoke-direct {p0}, Lcom/oplus/aiunit/translation/extend/expandparams/SynthesizeTextExpandBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/oplus/aiunit/translation/extend/expandparams/SynthesizeTextExpandBuilder;->addCustomParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oplus/aiunit/translation/extend/expandparams/SynthesizeTextExpandBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method
