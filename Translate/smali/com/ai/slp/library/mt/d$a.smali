.class final Lcom/ai/slp/library/mt/d$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ai/slp/library/mt/d;-><init>(Lz0/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ai/slp/library/mt/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ai/slp/library/mt/d$a;

    invoke-direct {v0}, Lcom/ai/slp/library/mt/d$a;-><init>()V

    sput-object v0, Lcom/ai/slp/library/mt/d$a;->INSTANCE:Lcom/ai/slp/library/mt/d$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oppo/yyyy/mt/LibMt;
    .locals 0

    .line 2
    new-instance p0, Lcom/oppo/yyyy/mt/LibMt;

    invoke-direct {p0}, Lcom/oppo/yyyy/mt/LibMt;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ai/slp/library/mt/d$a;->invoke()Lcom/oppo/yyyy/mt/LibMt;

    move-result-object p0

    return-object p0
.end method
