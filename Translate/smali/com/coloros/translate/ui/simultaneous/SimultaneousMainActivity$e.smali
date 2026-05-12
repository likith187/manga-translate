.class public final Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg2/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .locals 3

    sget-object v0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimultaneousMainActivity"

    invoke-virtual {v0, v2, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Phone call detected, stopping TTS"

    invoke-virtual {v0, v2, p1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity$e;->a:Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;->n1(Lcom/coloros/translate/ui/simultaneous/SimultaneousMainActivity;)Lcom/coloros/translate/ui/simultaneous/main/m;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coloros/translate/ui/simultaneous/main/m;->M0()V

    :goto_0
    return-void
.end method
