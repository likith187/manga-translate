.class public final synthetic Lcom/coloros/translate/ui/simultaneous/main/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/simultaneous/main/u;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/simultaneous/main/u;->a:Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;

    invoke-static {p0}, Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;->d(Lcom/coloros/translate/ui/simultaneous/main/SimultaneousViewControl;)V

    return-void
.end method
