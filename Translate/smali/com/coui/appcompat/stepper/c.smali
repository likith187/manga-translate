.class public final synthetic Lcom/coui/appcompat/stepper/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/stepper/COUIStepperView;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/stepper/COUIStepperView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/appcompat/stepper/c;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coui/appcompat/stepper/c;->a:Lcom/coui/appcompat/stepper/COUIStepperView;

    invoke-static {p0}, Lcom/coui/appcompat/stepper/COUIStepperView;->j(Lcom/coui/appcompat/stepper/COUIStepperView;)V

    return-void
.end method
