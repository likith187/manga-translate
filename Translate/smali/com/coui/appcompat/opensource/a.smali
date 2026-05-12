.class public final synthetic Lcom/coui/appcompat/opensource/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/opensource/a;->a:Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;

    iput-object p2, p0, Lcom/coui/appcompat/opensource/a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coui/appcompat/opensource/a;->a:Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;

    iget-object p0, p0, Lcom/coui/appcompat/opensource/a;->b:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;->f(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;Ljava/util/ArrayList;)V

    return-void
.end method
