.class public final synthetic Lcom/coloros/translate/ui/setting/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$d;


# instance fields
.field public final synthetic a:Lcom/coloros/translate/ui/setting/SettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/translate/ui/setting/SettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/translate/ui/setting/c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/ui/setting/c;->a:Lcom/coloros/translate/ui/setting/SettingFragment;

    invoke-static {p0, p1}, Lcom/coloros/translate/ui/setting/SettingFragment;->t(Lcom/coloros/translate/ui/setting/SettingFragment;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
