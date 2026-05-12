.class public final synthetic Lcom/coloros/translate/screen/translate/engine/picker/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

.field public final synthetic c:Lcom/coloros/translate/screen/translate/engine/language/a;


# direct methods
.method public synthetic constructor <init>(ILcom/coloros/translate/screen/translate/engine/picker/e$b;Lcom/coloros/translate/screen/translate/engine/language/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coloros/translate/screen/translate/engine/picker/f;->a:I

    iput-object p2, p0, Lcom/coloros/translate/screen/translate/engine/picker/f;->b:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    iput-object p3, p0, Lcom/coloros/translate/screen/translate/engine/picker/f;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/coloros/translate/screen/translate/engine/picker/f;->a:I

    iget-object v1, p0, Lcom/coloros/translate/screen/translate/engine/picker/f;->b:Lcom/coloros/translate/screen/translate/engine/picker/e$b;

    iget-object p0, p0, Lcom/coloros/translate/screen/translate/engine/picker/f;->c:Lcom/coloros/translate/screen/translate/engine/language/a;

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/translate/screen/translate/engine/picker/e$b$c;->b(ILcom/coloros/translate/screen/translate/engine/picker/e$b;Lcom/coloros/translate/screen/translate/engine/language/a;Landroid/view/View;)V

    return-void
.end method
