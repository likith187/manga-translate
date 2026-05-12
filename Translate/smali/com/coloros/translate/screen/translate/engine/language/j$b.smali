.class public final Lcom/coloros/translate/screen/translate/engine/language/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/translate/engine/language/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/coloros/translate/screen/translate/engine/language/j;
    .locals 0

    invoke-static {}, Lcom/coloros/translate/screen/translate/engine/language/j;->f()Ln8/j;

    move-result-object p0

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coloros/translate/screen/translate/engine/language/j;

    return-object p0
.end method
