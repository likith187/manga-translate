.class final Lcom/coloros/translate/ui/simultaneous/utils/a$b;
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
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/a$b;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/a$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a$b;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$b;

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
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/utils/a$b;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 5

    .line 2
    new-instance p0, Ljava/lang/StringBuffer;

    const-string v0, "\u2b55|\u2b50|[\u2600-\u27ff]|[\ud83c\udc00-\ud83c\udfff]|[\ud83d\udc00-\ud83d\udfff]|[\ud83e\udd00-\ud83e\udfff]|[\u2600-\u27ff]|[\ue000-\uf8ff]"

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    sget-object v1, Lcom/coloros/translate/ui/simultaneous/utils/a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a;

    invoke-static {v1}, Lcom/coloros/translate/ui/simultaneous/utils/a;->b(Lcom/coloros/translate/ui/simultaneous/utils/a;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 5
    sget-object v3, Lcom/coloros/translate/ui/simultaneous/utils/a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a;

    invoke-static {v3}, Lcom/coloros/translate/ui/simultaneous/utils/a;->b(Lcom/coloros/translate/ui/simultaneous/utils/a;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-static {v3}, Lcom/coloros/translate/ui/simultaneous/utils/a;->b(Lcom/coloros/translate/ui/simultaneous/utils/a;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, "|[\u2190-\u2199]|[\u25a0-\u25a1]|[\u25b2-\u25b3]|[\u25bc-\u25bd]|[\u25c6-\u25c7]|[\u25ce-\u25cf]|[\u25e2-\u25e5]|\\u203b|\\u25cb|\\u534d|\\u2121|\\u2299|\\u32a3|\\u2122|\\u3231|\\u56cd|\\u00ae|\\u00a9|\\u21aa|\\u21a3|\\u21d4"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
