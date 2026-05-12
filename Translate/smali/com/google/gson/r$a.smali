.class final enum Lcom/google/gson/r$a;
.super Lcom/google/gson/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gson/r;-><init>(Ljava/lang/String;ILcom/google/gson/r$a;)V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Long;)Lcom/google/gson/i;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/gson/k;->INSTANCE:Lcom/google/gson/k;

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/gson/o;

    invoke-direct {p0, p1}, Lcom/google/gson/o;-><init>(Ljava/lang/Number;)V

    return-object p0
.end method
