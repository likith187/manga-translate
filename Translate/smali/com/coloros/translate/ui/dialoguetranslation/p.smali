.class public final synthetic Lcom/coloros/translate/ui/dialoguetranslation/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/checkbox/COUICheckBox;

.field public final synthetic b:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/coui/appcompat/checkbox/COUICheckBox;Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/dialoguetranslation/p;->a:Lcom/coui/appcompat/checkbox/COUICheckBox;

    iput-object p2, p0, Lcom/coloros/translate/ui/dialoguetranslation/p;->b:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/translate/ui/dialoguetranslation/p;->a:Lcom/coui/appcompat/checkbox/COUICheckBox;

    iget-object p0, p0, Lcom/coloros/translate/ui/dialoguetranslation/p;->b:Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;

    invoke-static {v0, p0, p1, p2}, Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;->d1(Lcom/coui/appcompat/checkbox/COUICheckBox;Lcom/coloros/translate/ui/dialoguetranslation/DialogTranslationActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
