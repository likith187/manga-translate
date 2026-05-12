.class public final Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;
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
    invoke-direct {p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lw8/l;)Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lw8/l;",
            ")",
            "Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;"
        }
    .end annotation

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;

    invoke-direct {p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;-><init>()V

    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oplus/aiunit/antispam/client/AntiSpamRequest$Builder;->build()Lcom/oplus/aiunit/antispam/client/AntiSpamRequest;

    move-result-object p0

    return-object p0
.end method
