.class final Lcom/coloros/translate/screen/translate/engine/language/j$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/screen/translate/engine/language/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/language/j$a;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$a;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/language/j$a;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/screen/translate/engine/language/j;
    .locals 0

    .line 1
    new-instance p0, Lcom/coloros/translate/screen/translate/engine/language/j;

    invoke-direct {p0}, Lcom/coloros/translate/screen/translate/engine/language/j;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j$a;->invoke()Lcom/coloros/translate/screen/translate/engine/language/j;

    move-result-object p0

    return-object p0
.end method
