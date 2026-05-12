.class final Lcom/coloros/translate/ui/simultaneous/utils/a$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/ui/simultaneous/utils/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/a$a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/a$a;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a$a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$a;

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
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/utils/a$a;->invoke()Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/regex/Pattern;
    .locals 1

    .line 2
    sget-object p0, Lcom/coloros/translate/ui/simultaneous/utils/a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/utils/a;->a(Lcom/coloros/translate/ui/simultaneous/utils/a;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x42

    .line 3
    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method
