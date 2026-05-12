.class Lcom/coui/appcompat/edittext/COUIEditText$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/edittext/COUIEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/edittext/COUIEditText;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/edittext/COUIEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/edittext/COUIEditText$2;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/coui/appcompat/edittext/COUIEditText$2;->this$0:Lcom/coui/appcompat/edittext/COUIEditText;

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/coui/appcompat/edittext/COUIEditText;->access$000(Lcom/coui/appcompat/edittext/COUIEditText;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v0, v0, v1, v0}, Lcom/coui/appcompat/edittext/COUIEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
