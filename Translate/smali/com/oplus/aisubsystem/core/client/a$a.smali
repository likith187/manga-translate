.class public final Lcom/oplus/aisubsystem/core/client/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/aisubsystem/core/client/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lw8/l;)Lcom/oplus/aisubsystem/core/client/a;
    .locals 0

    const-string p0, "block"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/aisubsystem/core/client/a$b;

    invoke-direct {p0}, Lcom/oplus/aisubsystem/core/client/a$b;-><init>()V

    invoke-interface {p1, p0}, Lw8/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-class p1, Lcom/oplus/aisubsystem/core/client/a;

    invoke-virtual {p0, p1}, Lcom/oplus/aisubsystem/core/client/a$b;->buildRequest(Ljava/lang/Class;)Lcom/oplus/aisubsystem/core/client/a;

    move-result-object p0

    return-object p0
.end method
