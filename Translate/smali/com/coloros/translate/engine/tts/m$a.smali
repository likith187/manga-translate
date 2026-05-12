.class public Lcom/coloros/translate/engine/tts/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/tts/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:Lcom/coloros/translate/engine/tts/q;

.field public c:Z


# direct methods
.method public constructor <init>([BLcom/coloros/translate/engine/tts/q;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/engine/tts/m$a;->a:[B

    iput-object p2, p0, Lcom/coloros/translate/engine/tts/m$a;->b:Lcom/coloros/translate/engine/tts/q;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/translate/engine/tts/m$a;->c:Z

    return-void
.end method
