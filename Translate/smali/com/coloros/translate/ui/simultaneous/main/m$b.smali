.class final Lcom/coloros/translate/ui/simultaneous/main/m$b;
.super Lkotlin/jvm/internal/s;
.source "SourceFile"

# interfaces
.implements Lw8/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/main/m;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/translate/ui/simultaneous/main/m$b;

    invoke-direct {v0}, Lcom/coloros/translate/ui/simultaneous/main/m$b;-><init>()V

    sput-object v0, Lcom/coloros/translate/ui/simultaneous/main/m$b;->INSTANCE:Lcom/coloros/translate/ui/simultaneous/main/m$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/s;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/coloros/translate/engine/info/AsrParams;
    .locals 10

    .line 2
    new-instance p0, Lcom/coloros/translate/engine/info/AsrParams;

    const/16 v8, 0x40

    const/4 v9, 0x0

    const v1, 0x36ee80

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x2

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/coloros/translate/engine/info/AsrParams;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m$b;->invoke()Lcom/coloros/translate/engine/info/AsrParams;

    move-result-object p0

    return-object p0
.end method
