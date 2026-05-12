.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/checkbox/COUICheckBox$OnStateChangeListener;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/dialoguetranslation/h0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/dialoguetranslation/h0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/f0;->a:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    iput p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/f0;->b:I

    return-void
.end method


# virtual methods
.method public final onStateChanged(Lcom/coui/appcompat/checkbox/COUICheckBox;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/f0;->a:Lcom/coloros/translate/ui/dialoguetranslation/h0;

    iget p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/f0;->b:I

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/h0;->g(Lcom/coloros/translate/ui/dialoguetranslation/h0;ILcom/coui/appcompat/checkbox/COUICheckBox;I)V

    return-void
.end method
