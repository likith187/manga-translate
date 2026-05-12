.class final Lcom/coloros/translate/ui/dialoguetranslation/i0$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/dialoguetranslation/i0;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$b;

    invoke-direct {v0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/dialoguetranslation/i0$b;->INSTANCE:Lcom/coloros/translate/ui/dialoguetranslation/i0$b;

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
    invoke-virtual {p0}, Lcom/coloros/translate/ui/dialoguetranslation/i0$b;->invoke()V

    sget-object p0, Ln8/h0;->INSTANCE:Ln8/h0;

    return-object p0
.end method

.method public final invoke()V
    .locals 0

    .line 2
    sget-object p0, Lcom/coloros/translate/repository/d;->a:Lcom/coloros/translate/repository/d$a;

    invoke-virtual {p0}, Lcom/coloros/translate/repository/d$a;->c()Li2/a;

    move-result-object p0

    invoke-virtual {p0}, Li2/a;->a()V

    return-void
.end method
