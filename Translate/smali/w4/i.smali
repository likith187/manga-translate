.class public final Lw4/i;
.super Lcom/google/gson/v;
.source "SourceFile"


# static fields
.field private static final b:Lcom/google/gson/w;


# instance fields
.field private final a:Lcom/google/gson/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/gson/t;->LAZILY_PARSED_NUMBER:Lcom/google/gson/t;

    invoke-static {v0}, Lw4/i;->f(Lcom/google/gson/u;)Lcom/google/gson/w;

    move-result-object v0

    sput-object v0, Lw4/i;->b:Lcom/google/gson/w;

    return-void
.end method

.method private constructor <init>(Lcom/google/gson/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/gson/v;-><init>()V

    iput-object p1, p0, Lw4/i;->a:Lcom/google/gson/u;

    return-void
.end method

.method public static e(Lcom/google/gson/u;)Lcom/google/gson/w;
    .locals 1

    sget-object v0, Lcom/google/gson/t;->LAZILY_PARSED_NUMBER:Lcom/google/gson/t;

    if-ne p0, v0, :cond_0

    sget-object p0, Lw4/i;->b:Lcom/google/gson/w;

    return-object p0

    :cond_0
    invoke-static {p0}, Lw4/i;->f(Lcom/google/gson/u;)Lcom/google/gson/w;

    move-result-object p0

    return-object p0
.end method

.method private static f(Lcom/google/gson/u;)Lcom/google/gson/w;
    .locals 1

    new-instance v0, Lw4/i;

    invoke-direct {v0, p0}, Lw4/i;-><init>(Lcom/google/gson/u;)V

    new-instance p0, Lw4/i$a;

    invoke-direct {p0, v0}, Lw4/i$a;-><init>(Lw4/i;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(La5/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lw4/i;->g(La5/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(La5/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lw4/i;->h(La5/c;Ljava/lang/Number;)V

    return-void
.end method

.method public g(La5/a;)Ljava/lang/Number;
    .locals 3

    invoke-virtual {p1}, La5/a;->L0()La5/b;

    move-result-object v0

    sget-object v1, Lw4/i$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/gson/q;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, La5/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/gson/q;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lw4/i;->a:Lcom/google/gson/u;

    invoke-interface {p0, p1}, Lcom/google/gson/u;->readNumber(La5/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, La5/a;->H0()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public h(La5/c;Ljava/lang/Number;)V
    .locals 0

    invoke-virtual {p1, p2}, La5/c;->N0(Ljava/lang/Number;)La5/c;

    return-void
.end method
