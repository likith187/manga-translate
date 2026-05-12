.class Lw4/o$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw4/o;->a(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/v;)Lcom/google/gson/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/reflect/TypeToken;

.field final synthetic b:Lcom/google/gson/v;


# direct methods
.method constructor <init>(Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/v;)V
    .locals 0

    iput-object p1, p0, Lw4/o$w;->a:Lcom/google/gson/reflect/TypeToken;

    iput-object p2, p0, Lw4/o$w;->b:Lcom/google/gson/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/d;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/v;
    .locals 0

    iget-object p1, p0, Lw4/o$w;->a:Lcom/google/gson/reflect/TypeToken;

    invoke-virtual {p2, p1}, Lcom/google/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lw4/o$w;->b:Lcom/google/gson/v;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
