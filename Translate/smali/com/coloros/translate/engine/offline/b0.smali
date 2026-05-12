.class public final Lcom/coloros/translate/engine/offline/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/engine/offline/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/engine/offline/b0;

    invoke-direct {v0}, Lcom/coloros/translate/engine/offline/b0;-><init>()V

    sput-object v0, Lcom/coloros/translate/engine/offline/b0;->INSTANCE:Lcom/coloros/translate/engine/offline/b0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(La2/b;)V
    .locals 0

    const-string p0, "callback"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->INSTANCE:Lcom/coloros/translate/engine/offline/e0;

    invoke-virtual {p0, p1}, Lcom/coloros/translate/engine/offline/e0;->k(La2/b;)V

    return-void
.end method

.method public final b()V
    .locals 0

    sget-object p0, Lcom/coloros/translate/engine/offline/e0;->INSTANCE:Lcom/coloros/translate/engine/offline/e0;

    invoke-virtual {p0}, Lcom/coloros/translate/engine/offline/e0;->p()V

    return-void
.end method
