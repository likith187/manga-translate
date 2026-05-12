.class Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 1

    .line 2
    new-instance p0, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;-><init>(Lcom/oplus/backup/sdk/common/plugin/a;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->b(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;->a(Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;->createFromParcel(Landroid/os/Parcel;)Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;
    .locals 0

    .line 2
    new-array p0, p1, [Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig$1;->newArray(I)[Lcom/oplus/backup/sdk/common/plugin/BRPluginConfig;

    move-result-object p0

    return-object p0
.end method
