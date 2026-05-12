.class final Lcom/coloros/translate/utils/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/utils/a0;

.field private static final a:Ln8/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/utils/a0;

    invoke-direct {v0}, Lcom/coloros/translate/utils/a0;-><init>()V

    sput-object v0, Lcom/coloros/translate/utils/a0;->INSTANCE:Lcom/coloros/translate/utils/a0;

    sget-object v0, Lcom/coloros/translate/utils/a0$a;->INSTANCE:Lcom/coloros/translate/utils/a0$a;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/utils/a0;->a:Ln8/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/gson/d;
    .locals 0

    sget-object p0, Lcom/coloros/translate/utils/a0;->a:Ln8/j;

    invoke-interface {p0}, Ln8/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/gson/d;

    return-object p0
.end method
