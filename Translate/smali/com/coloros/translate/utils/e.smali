.class public final synthetic Lcom/coloros/translate/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/utils/e;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/translate/utils/e;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/utils/e;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/translate/utils/e;->b:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/utils/g;->b(Ljava/lang/String;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
