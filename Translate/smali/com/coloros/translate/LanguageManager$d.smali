.class public final Lcom/coloros/translate/LanguageManager$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/LanguageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
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
    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager$d;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/LanguageManager$d;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/LanguageManager$d;->d()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final d()Ljava/util/Map;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/LanguageManager;->g()Ln8/j;

    move-result-object p0

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/coloros/translate/LanguageManager;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/LanguageManager;->e()Ln8/j;

    move-result-object p0

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/LanguageManager;

    return-object p0
.end method

.method public final c()Ljava/util/Map;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/LanguageManager;->f()Ln8/j;

    move-result-object p0

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method
