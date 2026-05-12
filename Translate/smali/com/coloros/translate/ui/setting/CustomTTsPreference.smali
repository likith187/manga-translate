.class public final Lcom/coloros/translate/ui/setting/CustomTTsPreference;
.super Lcom/coui/appcompat/preference/COUIPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/ui/setting/CustomTTsPreference$a;,
        Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;
    }
.end annotation


# static fields
.field public static final h:Lcom/coloros/translate/ui/setting/CustomTTsPreference$a;


# instance fields
.field private a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

.field private b:Landroid/widget/TextView;

.field private c:[Ljava/lang/String;

.field private f:Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/ui/setting/CustomTTsPreference$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/ui/setting/CustomTTsPreference$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->h:Lcom/coloros/translate/ui/setting/CustomTTsPreference$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object p1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/coloros/translate/R$array;->play_speed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string v0, "getStringArray(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    sget-object p1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$array;->play_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "getStringArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$array;->play_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "getStringArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coui/appcompat/preference/COUIPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    sget-object p1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {p1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/coloros/translate/R$array;->play_speed:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string p2, "getStringArray(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->c:[Ljava/lang/String;

    return-void
.end method

.method public static final synthetic h(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic i(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->c:[Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->f:Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;

    return-object p0
.end method


# virtual methods
.method public final k(Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->f:Lcom/coloros/translate/ui/setting/CustomTTsPreference$b;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/l;)V
    .locals 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/coui/appcompat/preference/COUIPreference;->onBindViewHolder(Landroidx/preference/l;)V

    sget v0, Lcom/coloros/translate/R$id;->tts_speed_level:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->b:Landroid/widget/TextView;

    sget v0, Lcom/coloros/translate/R$id;->section_seek_bar:I

    invoke-virtual {p1, v0}, Landroidx/preference/l;->b(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.coui.appcompat.seekbar.COUISectionSeekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->a:Lcom/coui/appcompat/seekbar/COUISectionSeekBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/COUISectionSeekBar;->setMax(I)V

    sget-object v1, Lcom/coloros/translate/utils/l0;->a:Lcom/coloros/translate/utils/l0$a;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "tts_speed"

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/coloros/translate/utils/l0$a;->g(Lcom/coloros/translate/utils/l0$a;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setProgress(I)V

    sget-object v1, Lcom/coloros/translate/utils/m;->INSTANCE:Lcom/coloros/translate/utils/m;

    invoke-virtual {v1}, Lcom/coloros/translate/utils/m;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/coloros/translate/R$array;->play_speed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "getStringArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->c:[Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/translate/ui/setting/CustomTTsPreference;->b:Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/coui/appcompat/seekbar/COUISeekBar;->getProgress()I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setEnableVibrator(Z)V

    new-instance v0, Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;

    invoke-direct {v0, p0}, Lcom/coloros/translate/ui/setting/CustomTTsPreference$onBindViewHolder$1$1;-><init>(Lcom/coloros/translate/ui/setting/CustomTTsPreference;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/seekbar/COUISeekBar;->setOnSeekBarChangeListener(Lcom/coui/appcompat/seekbar/COUISeekBar$OnSeekBarChangeListener;)V

    :cond_1
    return-void
.end method
