.class final Lcom/coloros/translate/screen/utils/u$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/utils/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/utils/u$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/utils/u$b;

    invoke-direct {v0}, Lcom/coloros/translate/screen/utils/u$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/utils/u$b;->INSTANCE:Lcom/coloros/translate/screen/utils/u$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/screen/utils/u$a;
    .locals 1

    .line 2
    new-instance p0, Lcom/coloros/translate/screen/utils/u$a;

    sget-object v0, Lcom/coloros/translate/base/a;->INSTANCE:Lcom/coloros/translate/base/a;

    invoke-virtual {v0}, Lcom/coloros/translate/base/a;->f()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/translate/screen/utils/u$a;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/utils/u$b;->invoke()Lcom/coloros/translate/screen/utils/u$a;

    move-result-object p0

    return-object p0
.end method
