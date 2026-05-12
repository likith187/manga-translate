.class public final synthetic Lx1/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx1/z0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/coloros/translate/engine/IRtasrListener;


# direct methods
.method public synthetic constructor <init>(Lx1/z0;Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/p0;->a:Lx1/z0;

    iput-object p2, p0, Lx1/p0;->b:Ljava/lang/String;

    iput-object p3, p0, Lx1/p0;->c:Lcom/coloros/translate/engine/IRtasrListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx1/p0;->a:Lx1/z0;

    iget-object v1, p0, Lx1/p0;->b:Ljava/lang/String;

    iget-object p0, p0, Lx1/p0;->c:Lcom/coloros/translate/engine/IRtasrListener;

    invoke-static {v0, v1, p0}, Lx1/z0;->n(Lx1/z0;Ljava/lang/String;Lcom/coloros/translate/engine/IRtasrListener;)V

    return-void
.end method
