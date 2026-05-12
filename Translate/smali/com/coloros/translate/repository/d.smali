.class public abstract Lcom/coloros/translate/repository/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/repository/d$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/repository/d$a;

.field private static final b:Ln8/j;

.field private static final c:Ln8/j;

.field private static final d:Lcom/coloros/translate/repository/d$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/repository/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/repository/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    sget-object v0, Lcom/coloros/translate/repository/d$d;->INSTANCE:Lcom/coloros/translate/repository/d$d;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/repository/d;->b:Ln8/j;

    sget-object v0, Lcom/coloros/translate/repository/d$c;->INSTANCE:Lcom/coloros/translate/repository/d$c;

    invoke-static {v0}, Ln8/k;->b(Lw8/a;)Ln8/j;

    move-result-object v0

    sput-object v0, Lcom/coloros/translate/repository/d;->c:Ln8/j;

    new-instance v0, Lcom/coloros/translate/repository/d$b;

    invoke-direct {v0}, Lcom/coloros/translate/repository/d$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/repository/d;->d:Lcom/coloros/translate/repository/d$b;

    return-void
.end method

.method public static final synthetic a()Lcom/coloros/translate/repository/d$b;
    .locals 1

    sget-object v0, Lcom/coloros/translate/repository/d;->d:Lcom/coloros/translate/repository/d$b;

    return-object v0
.end method

.method public static final synthetic b()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/repository/d;->c:Ln8/j;

    return-object v0
.end method

.method public static final synthetic c()Ln8/j;
    .locals 1

    sget-object v0, Lcom/coloros/translate/repository/d;->b:Ln8/j;

    return-object v0
.end method
