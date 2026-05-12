.class final Lcom/coloros/translate/utils/a0$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/utils/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/a0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/a0$a;

    invoke-direct {v0}, Lcom/coloros/translate/utils/a0$a;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/a0$a;->INSTANCE:Lcom/coloros/translate/utils/a0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/google/gson/d;
    .locals 0

    .line 2
    new-instance p0, Lcom/google/gson/e;

    invoke-direct {p0}, Lcom/google/gson/e;-><init>()V

    invoke-virtual {p0}, Lcom/google/gson/e;->b()Lcom/google/gson/d;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/utils/a0$a;->invoke()Lcom/google/gson/d;

    move-result-object p0

    return-object p0
.end method
