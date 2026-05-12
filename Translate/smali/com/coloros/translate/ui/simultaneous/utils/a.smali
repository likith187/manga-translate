.class public final Lcom/coloros/translate/ui/simultaneous/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a;

.field private static final a:Ln8/j;

.field private static final b:Ln8/j;

.field private static final c:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/utils/a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/a;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a$c;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a;->a:Ln8/j;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a$b;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$b;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a;->b:Ln8/j;

    sget-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a$a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a;->c:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/ui/simultaneous/utils/a;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/utils/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/ui/simultaneous/utils/a;)Ljava/util/LinkedList;
    .locals 0

    invoke-direct {p0}, Lcom/coloros/translate/ui/simultaneous/utils/a;->f()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/coloros/translate/ui/simultaneous/utils/a;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/utils/a;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/utils/a;->d()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private final d()Ljava/util/regex/Pattern;
    .locals 1

    sget-object p0, Lcom/coloros/translate/ui/simultaneous/utils/a;->c:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/regex/Pattern;

    return-object p0
.end method

.method private final e()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/coloros/translate/ui/simultaneous/utils/a;->b:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private final f()Ljava/util/LinkedList;
    .locals 0

    sget-object p0, Lcom/coloros/translate/ui/simultaneous/utils/a;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    return-object p0
.end method
