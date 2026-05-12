.class public final synthetic Lcom/coloros/translate/screen/utils/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/screen/utils/n;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/coloros/translate/screen/utils/n;->b:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/screen/utils/n;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/translate/screen/utils/n;->b:Landroid/widget/EditText;

    invoke-static {v0, p0}, Lcom/coloros/translate/screen/utils/o;->a(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
