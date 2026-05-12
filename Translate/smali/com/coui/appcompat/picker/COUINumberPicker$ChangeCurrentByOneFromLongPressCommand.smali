.class Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/picker/COUINumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Lcom/coui/appcompat/picker/COUINumberPicker;


# direct methods
.method constructor <init>(Lcom/coui/appcompat/picker/COUINumberPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    iget-boolean v1, p0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    invoke-static {v0, v1}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$500(Lcom/coui/appcompat/picker/COUINumberPicker;Z)V

    iget-object v0, p0, Lcom/coui/appcompat/picker/COUINumberPicker$ChangeCurrentByOneFromLongPressCommand;->this$0:Lcom/coui/appcompat/picker/COUINumberPicker;

    invoke-static {v0}, Lcom/coui/appcompat/picker/COUINumberPicker;->access$600(Lcom/coui/appcompat/picker/COUINumberPicker;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
