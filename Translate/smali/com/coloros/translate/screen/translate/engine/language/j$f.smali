.class final Lcom/coloros/translate/screen/translate/engine/language/j$f;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/screen/translate/engine/language/j;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/screen/translate/engine/language/j$f;

    invoke-direct {v0}, Lcom/coloros/translate/screen/translate/engine/language/j$f;-><init>()V

    sput-object v0, Lcom/coloros/translate/screen/translate/engine/language/j$f;->INSTANCE:Lcom/coloros/translate/screen/translate/engine/language/j$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/screen/translate/engine/language/j$f;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 0

    .line 2
    const-string p0, "screen_language_set"

    return-object p0
.end method
