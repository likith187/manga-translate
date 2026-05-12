.class final Lcom/coloros/translate/repository/d$a$a;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/repository/d$a;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/repository/d$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/repository/d$a$a;

    invoke-direct {v0}, Lcom/coloros/translate/repository/d$a$a;-><init>()V

    sput-object v0, Lcom/coloros/translate/repository/d$a$a;->INSTANCE:Lcom/coloros/translate/repository/d$a$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coloros/translate/repository/d$a$a;->invoke(Z)V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke(Z)V
    .locals 1

    .line 2
    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string p1, "RepositoryFactory"

    const-string v0, "checkAiDownload download"

    invoke-virtual {p0, p1, v0}, Lcom/coloros/translate/utils/c0$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-static {p0}, Lcom/coloros/translate/repository/d$a;->a(Lcom/coloros/translate/repository/d$a;)Lcom/coloros/translate/repository/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/repository/a;->b()V

    return-void
.end method
