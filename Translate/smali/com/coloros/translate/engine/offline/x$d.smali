.class Lcom/coloros/translate/engine/offline/x$d;
.super Lcom/coloros/translate/utils/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/translate/engine/offline/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Lcom/coloros/translate/engine/offline/x;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/translate/utils/h1;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/coloros/translate/engine/offline/x;

    invoke-virtual {p0, p1, p2}, Lcom/coloros/translate/engine/offline/x$d;->b(Landroid/os/Message;Lcom/coloros/translate/engine/offline/x;)V

    return-void
.end method

.method protected b(Landroid/os/Message;Lcom/coloros/translate/engine/offline/x;)V
    .locals 0

    invoke-static {p2, p1}, Lcom/coloros/translate/engine/offline/x;->i(Lcom/coloros/translate/engine/offline/x;Landroid/os/Message;)V

    return-void
.end method
