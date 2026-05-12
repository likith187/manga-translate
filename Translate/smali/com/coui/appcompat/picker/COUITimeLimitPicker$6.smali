.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/appcompat/picker/COUITimeLimitPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coui/appcompat/picker/COUITimeLimitPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;->this$0:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;->this$0:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-static {p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->access$100(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->access$102(Lcom/coui/appcompat/picker/COUITimeLimitPicker;Z)Z

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$6;->this$0:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-static {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->access$200(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V

    return-void
.end method
