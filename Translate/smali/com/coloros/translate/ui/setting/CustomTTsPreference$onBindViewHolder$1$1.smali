.class public final Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/translate/ui/setting/CustomTTsPreference;->onBindViewHolder(Landroidx/preference/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;


# direct methods
.method constructor <init>(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;->a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/coui/appcompat/seekbar/COUISeekBar;IZ)V
    .locals 7

    iget-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;->a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;

    invoke-static {p1}, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->h(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;->a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;

    invoke-static {p3}, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->i(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)[Ljava/lang/String;

    move-result-object p3

    aget-object p3, p3, p2

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v1, "tts_speed"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/coloros/translate/utils/l0$a;->l(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;ILjava/lang/Object;)V

    sget-object p1, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSpeedChanged progress : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CustomTTsPreference"

    invoke-virtual {p1, v0, p3}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;->a:Lcom/coloros/translate/ui/setting/CustomTTsPreference;

    invoke-static {p0}, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->j(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;->a()V

    :cond_1
    sget-object p0, Lcom/coloros/translate/utils/n;->INSTANCE:Lcom/coloros/translate/utils/n;

    invoke-virtual {p0, p2}, Lcom/coloros/translate/utils/n;->s(I)V

    return-void
.end method

.method public onStartTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/coui/appcompat/seekbar/COUISeekBar;)V
    .locals 0

    return-void
.end method
