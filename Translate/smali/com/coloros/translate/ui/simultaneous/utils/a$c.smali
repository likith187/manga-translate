.class final Lcom/coloros/translate/ui/simultaneous/utils/a$c;
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
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/a$c;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/a$c;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a$c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$c;

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
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/utils/a$c;->invoke()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 3
    const-string v0, "\\ufe0f"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    const-string v0, "\\u25fd"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 5
    const-string v0, "\\u25fe"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 6
    const-string v0, "\\u2b1b"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    const-string v0, "\\u2b1c"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 8
    const-string v0, "\\u23e9"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 9
    const-string v0, "\\u23ea"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 10
    const-string v0, "\\u23eb"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v0, "\\u23ec"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    const-string v0, "\\u231b"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 13
    const-string v0, "\\u23f3"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 14
    const-string v0, "\\u23f9"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 15
    const-string v0, "\\u23f8"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 16
    const-string v0, "\\u23fa"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    const-string v0, "\\u231a"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 18
    const-string v0, "\\u23f0"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 19
    const-string v0, "\\u20e3"

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
