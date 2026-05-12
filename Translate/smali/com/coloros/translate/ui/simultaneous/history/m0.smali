.class public final synthetic Lcom/coloros/translate/ui/simultaneous/history/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lw8/l;

.field public final synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Lw8/l;Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/history/m0;->a:Lw8/l;

    iput-object p2, p0, Lcom/coloros/translate/ui/simultaneous/history/m0;->b:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/simultaneous/history/m0;->a:Lw8/l;

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/history/m0;->b:Ljava/lang/StringBuilder;

    invoke-static {v0, p0}, Lcom/coloros/translate/ui/simultaneous/history/l0$c;->a(Lw8/l;Ljava/lang/StringBuilder;)V

    return-void
.end method
